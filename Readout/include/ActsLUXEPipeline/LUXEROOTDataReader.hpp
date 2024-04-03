#pragma once

#include "Acts/Definitions/Units.hpp"
#include "ActsLUXEPipeline/ROOTDataReader.hpp"
#include "ActsLUXEPipeline/LUXEGeometryConstraints.hpp"
#include "ActsLUXEPipeline/LUXESimpleSourceLink.hpp"
#include "ActsLUXEPipeline/LUXEDataContainers.hpp"

namespace LUXEROOTReader {

/// @brief Global to local conversion
/// for the LUXE geometry
Acts::Vector2 convertToLoc(
    const Acts::Vector3& glob, 
    const Acts::GeometryIdentifier geoId,
    const LUXEGeometry::GeometryOptions& gOpt) {
        // TODO: geoIds for the electron arm
        int nStave = geoId.sensitive()/10 - 1;
        int nChip = geoId.sensitive()%10 - 1;
        if (nStave % 2 == 0) {
            Acts::Vector2 loc = Acts::Vector2(
                (glob.x() - gOpt.chipXEven.at(nChip)),
                (glob.y() - gOpt.chipY));
            return loc;
        }
        else {
            Acts::Vector2 loc = Acts::Vector2(
                (glob.x() - gOpt.chipXOdd.at(nChip)),
                (glob.y() - gOpt.chipY));
            return loc;
        }
}

// Convert the momentum to the IP
// because Arka didn't make my life easy
TLorentzVector convertToIP(
    TLorentzVector mom, 
    Acts::ActsScalar mass = 0.511 * Acts::UnitConstants::MeV) {
        TLorentzVector ipMom; 
        ipMom.SetE(mom.E());
        ipMom.SetPx(0);
        ipMom.SetPy(mom.Py());
        ipMom.SetPz(
            std::sqrt(
                mom.E() * mom.E() - 
                ipMom.Py() * ipMom.Py() - 
                mass * mass));
        return ipMom;
}

/// @brief The ROOT file reader for the LUXE simulation
/// that knows about the true hits and the true momenta
///
/// @note Covariance is implemented as a diagonal matrix
/// of ALPIDE intrinsic resolutions
class LUXEROOTSimDataReader : 
    public ROOTDataReader<LUXEDataContainer::SimMeasurements> {
        public:
            /// @brief The configuration struct
            struct Config 
                : public ROOTDataReader<LUXEDataContainer::SimMeasurements>::Config{
                    /// The geometry options
                    LUXEGeometry::GeometryOptions gOpt;
                    /// Energy cuts
                    std::tuple<Acts::ActsScalar, Acts::ActsScalar> energyCuts = 
                        {8 * Acts::UnitConstants::GeV, 100 * Acts::UnitConstants::GeV};
            };

            LUXEROOTSimDataReader(const Config &config, Acts::Logging::Level level) 
                : ROOTDataReader(config, level), m_cfg(config) {
                    m_actsToWorld = 
                        m_cfg.gOpt.actsToWorld.rotation().inverse();
                    
                    m_energyCuts = m_cfg.energyCuts;
                }
    
            std::string name() const override { return "LUXEROOTSimDataReader"; }

        private:
            Config m_cfg;

            Acts::RotationMatrix3 m_actsToWorld;

            std::tuple<Acts::ActsScalar, Acts::ActsScalar> m_energyCuts;

            inline void prepareMeasurements(
                const AlgorithmContext &context, 
                LUXEDataContainer::SimMeasurements* measurements) const override {
                    // Check if the event number is correct
                    auto eventId = m_intColumns.at("eventId");
                    if (eventId != context.eventNumber) {
                        return;
                    }
    
                    // Get the columns with the event data
                    std::int32_t geoIdval; 
                    std::vector<std::int32_t>* trackId;
                    std::vector<TVector3>* hits;
                    std::vector<TVector3>* vertices;
                    std::vector<TLorentzVector>* mom;
                    try {
                        geoIdval = m_intColumns.at("geoId");
                        trackId = m_vectorIntColumns.at("tru_trackId");
                        hits = m_vector3Columns.at("tru_hit");
                        vertices = m_vector3Columns.at("tru_vertex");
                        mom = m_lorentzColumns.at("tru_p");
                    } catch (const std::out_of_range& e) {
                        throw std::runtime_error("Missing columns in the ROOT file");
                    }

                    // This is per the LUXE convention
                    Acts::GeometryIdentifier geoId;
                    geoId.setSensitive(geoIdval + 11);
                    
                    // Create the measurements
                    Acts::ActsScalar me = 0.511 * Acts::UnitConstants::MeV;
                    for (int idx = 0; idx < hits->size(); idx++) {
                        // Apply the cuts
                        if (mom->at(idx).E() < std::get<0>(m_energyCuts) || 
                            mom->at(idx).E() > std::get<1>(m_energyCuts)) {
                            continue;
                        }

                        // Convert the momentum to the IP
                        // because it was sampled just before the 
                        // impact with the detector
                        TLorentzVector ipMom = convertToIP(mom->at(idx), me);

                        // Convert the true hit to the local coordinates
                        Acts::Vector3 trueHitGlob = 
                            {hits->at(idx).X() * Acts::UnitConstants::mm, 
                            hits->at(idx).Y() * Acts::UnitConstants::mm, 
                            hits->at(idx).Z() * Acts::UnitConstants::mm};

                        const Acts::Vector2 trueHitLoc = 
                            convertToLoc(trueHitGlob, geoId, m_cfg.gOpt);

                        // Convert the vertex
                        Acts::Vector3 trueVertex3 = 
                            {vertices->at(idx).X() * Acts::UnitConstants::mm, 
                            vertices->at(idx).Y() * Acts::UnitConstants::mm, 
                            vertices->at(idx).Z() * Acts::UnitConstants::mm};

                        trueVertex3 = 
                            m_actsToWorld * trueVertex3;

                        // KF accepts 4D vectors
                        Acts::Vector4 trueVertex = 
                            {trueVertex3.x(), 
                            trueVertex3.y(), 
                            trueVertex3.z(), 0};

                        // Set up the truth parameters
                        Acts::BoundVector truthPars = Acts::BoundVector::Zero();
                        truthPars[Acts::eBoundLoc0] = trueHitLoc[Acts::eBoundLoc0];
                        truthPars[Acts::eBoundLoc1] = trueHitLoc[Acts::eBoundLoc1];

                        Acts::Vector3 trueP = 
                            {ipMom.Px(), ipMom.Py(), ipMom.Pz()};
                        Acts::Vector3 dir = trueP.normalized();

                        Acts::Vector3 dirRotated = 
                            m_actsToWorld * dir;

                        truthPars[Acts::eBoundPhi] = Acts::VectorHelpers::phi(dirRotated);
                        truthPars[Acts::eBoundTheta] = Acts::VectorHelpers::theta(dirRotated);
                        truthPars[Acts::eBoundQOverP] = 
                            1/(ipMom.E() * Acts::UnitConstants::GeV);
                        truthPars[Acts::eBoundTime] = ipMom.T();

                        // Covariance is filled with the intrinsic resolution
                        Acts::Vector2 stddev(5  * Acts::UnitConstants::um,
                            5  * Acts::UnitConstants::um);
                        Acts::SquareMatrix2 cov = stddev.cwiseProduct(stddev).asDiagonal();
        
                        // Create the source link
                        SimpleSourceLink ssl(trueHitLoc, cov, geoId, eventId);
                        Acts::SourceLink sl{ssl};
    
                        // Fill the measurement
                        LUXEDataContainer::SimMeasurement measurement{
                            .sourceLink = sl,
                            .truthParameters = truthPars,
                            .trueVertex = trueVertex,
                            .trackId = trackId->at(idx)
                        };

                        measurements->push_back(measurement);
                    }
        };
};

auto defaultSimConfig() {
    LUXEROOTSimDataReader::Config config;
    config.treeName = "clusters";
    config.vector3Keys = {"tru_hit", "tru_vertex"};
    config.lorentzKeys = {"tru_p"};
    config.vectorIntKeys = {"tru_trackId"};
    config.intKeys = {"eventId", "geoId"};
    return config;
}

}  // namespace LUXEROOTReader
