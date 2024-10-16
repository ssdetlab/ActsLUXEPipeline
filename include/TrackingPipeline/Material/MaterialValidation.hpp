#pragma once

#include "TrackingPipeline/Infrastructure/DataHandle.hpp"
#include "TrackingPipeline/Infrastructure/IAlgorithm.hpp"
#include "TrackingPipeline/Infrastructure/ProcessCode.hpp"
#include "TrackingPipeline/Infrastructure/RandomNumbers.hpp"
#include "TrackingPipeline/Simulation/Generators.hpp"
#include "TrackingPipeline/Material/IMaterialWriter.hpp"

#include "Acts/Definitions/Algebra.hpp"
#include "Acts/Geometry/GeometryContext.hpp"
#include "Acts/Material/MaterialInteraction.hpp"
#include "Acts/Material/MaterialValidater.hpp"
#include "Acts/Utilities/Logger.hpp"

/// @class MaterialValidation
///
class MaterialValidation : public IAlgorithm {
    public:
        /// @class nested Config class
        /// of the MaterialMapping algorithm
        struct Config {
            /// Number of tracks per event
            std::size_t ntracks = 1000;
        
            /// Start position for the scan
            std::shared_ptr<IVertexGenerator> startPosition = nullptr;

            /// Start direction for the scan: phi
            std::pair<Acts::ActsScalar, Acts::ActsScalar> phiRange = {-M_PI, M_PI};
        
            /// Start direction for the scan: eta
            std::pair<Acts::ActsScalar, Acts::ActsScalar> etaRange = {0., 4.};
        
            /// Random number service
            std::shared_ptr<RandomNumbers> randomNumberSvc = nullptr;
        
            // The validater
            std::shared_ptr<Acts::MaterialValidater> materialValidater = nullptr;
        
            /// Output collection name
            std::string outputMaterialTracks = "material_tracks";
        };

        /// Constructor
        ///
        /// @param cfg The configuration struct carrying the used tools
        /// @param level The output logging level
        MaterialValidation(
            const Config& cfg,
            Acts::Logging::Level level = Acts::Logging::INFO);

        /// Destructor
        /// - it also writes out the file
        ~MaterialValidation() override = default;

        /// Framework execute method
        ///
        /// @param context The algorithm context for event consistency
        ProcessCode execute(
            const AlgorithmContext& context) const override;

        /// Readonly access to the config
        const Config& config() const { return m_cfg; }
        
    private:
        Config m_cfg;  //!< internal config object
        
        WriteDataHandle<std::unordered_map<std::size_t, Acts::RecordedMaterialTrack>>
            m_outputMaterialTracks{this, "OutputMaterialTracks"};
};
