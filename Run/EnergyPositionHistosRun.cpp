#include "ActsLUXEPipeline/Sequencer.hpp"
#include "ActsLUXEPipeline/LUXEGeometry.hpp"
#include "ActsLUXEPipeline/BinnedMagneticField.hpp"
#include "ActsLUXEPipeline/ConstantBoundedField.hpp"
#include "ActsLUXEPipeline/MeasurementsCreator.hpp"
#include "ActsLUXEPipeline/AlgorithmContext.hpp"
#include "ActsLUXEPipeline/LookupDataWriter.hpp"
#include "ActsLUXEPipeline/LookupMaker.hpp"
#include "ActsLUXEPipeline/Generators.hpp"

#include "Acts/Utilities/Logger.hpp"

#include <filesystem>

using namespace Acts::UnitLiterals;

using Propagator = Acts::Propagator<
    Acts::EigenStepper<>, 
    Acts::Experimental::DetectorNavigator>;
using TrackParameters = Acts::CurvilinearTrackParameters;

/// @brief Run the propagation through 
/// a uniform energy spectrum and record the
/// energy vs position histograms for each layer
int main() {
    // Set the log level
    Acts::Logging::Level logLevel = Acts::Logging::INFO;

    // Dummy context and options
    Acts::GeometryContext gctx;
    Acts::MagneticFieldContext mctx;
    Acts::CalibrationContext cctx;
    LUXEGeometry::GeometryOptions gOpt;

    // --------------------------------------------------------------
    // LUXE detector setup

    // Set the path to the gdml file
    // and the names of the volumes to be converted
    std::string gdmlPath = 
        "/home/romanurmanov/lab/LUXE/acts_LUXE_tracking/ActsLUXEPipeline_gdmls/lxgeomdump_stave_positron.gdml";
    std::vector<std::string> names{"OPPPSensitive"};

    std::string materialPath = "/home/romanurmanov/lab/LUXE/acts_LUXE_tracking/ActsLUXEPipeline_build/material.json";

    // Build the LUXE detector
    auto trackerBP = 
        LUXEGeometry::makeBlueprintLUXE(gdmlPath, names, gOpt);
    auto detector =
        LUXEGeometry::buildLUXEDetector(std::move(trackerBP), gctx, gOpt, materialPath, {});

    // --------------------------------------------------------------
    // The magnetic field setup

    // Extent in already rotated frame
    Acts::Extent dipoleExtent;
    dipoleExtent.set(
        Acts::binX, 
        gOpt.dipoleTranslation[0] - gOpt.dipoleBounds[0] + gOpt.constantFieldDelta[0],
        gOpt.dipoleTranslation[0] + gOpt.dipoleBounds[0] - gOpt.constantFieldDelta[0]);
    dipoleExtent.set(
        Acts::binZ,
        gOpt.dipoleTranslation[1] - gOpt.dipoleBounds[1] + gOpt.constantFieldDelta[1],
        gOpt.dipoleTranslation[1] + gOpt.dipoleBounds[1] - gOpt.constantFieldDelta[1]);
    dipoleExtent.set(
        Acts::binY,
        gOpt.dipoleTranslation[2] - gOpt.dipoleBounds[2] + gOpt.constantFieldDelta[2],
        gOpt.dipoleTranslation[2] + gOpt.dipoleBounds[2] - gOpt.constantFieldDelta[2]);

    auto field = std::make_shared<ConstantBoundedField>(
        Acts::Vector3(0., 0., -1.2_T),
        dipoleExtent);

    // --------------------------------------------------------------
    // Event creation 

    // Setup the sequencer
    Sequencer::Config seqCfg;
    seqCfg.events = 10000;
    seqCfg.numThreads = 1;
    seqCfg.trackFpes = false;
    Sequencer sequencer(seqCfg);

    Acts::Experimental::DetectorNavigator::Config navCfg;
    navCfg.detector = detector.get();
    navCfg.resolvePassive = false;
    navCfg.resolveMaterial = true;
    navCfg.resolveSensitive = true;

    Acts::Experimental::DetectorNavigator navigator(
        navCfg, 
        Acts::getDefaultLogger(
            "DetectorNavigator", 
            logLevel));
    Acts::EigenStepper<> stepper(field);

    auto propagator = 
        Propagator(std::move(stepper), std::move(navigator));

    MeasurementsCreator::Config mcCfg;
    mcCfg.outputCollection = "Measurements";
    mcCfg.vertexGenerator = std::make_shared<StationaryVertexGenerator>();
    mcCfg.momentumGenerator = std::make_shared<LUXESimParticle::LUXEMomentumGenerator>();
    mcCfg.randomNumberSvc = std::make_shared<RandomNumbers>(RandomNumbers::Config());

    sequencer.addAlgorithm(
        std::make_shared<MeasurementsCreator>(
                propagator, mcCfg, logLevel));

    LookupDataWriter::Config lookupWriterCfg{
        mcCfg.outputCollection,
        gOpt,
        detector};
    sequencer.addWriter(
        std::make_shared<LookupDataWriter>(lookupWriterCfg, logLevel));

    sequencer.run();

    // LookupMaker::Config lookupMakerCfg{lookupWriterCfg.filename};
    // auto lMaker = std::make_shared<LookupMaker>(lookupMakerCfg);
    // lMaker->execute();

    return 0;
}