# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/alonlevi/CLionProjects/LUXEPipeline

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/alonlevi/CLionProjects/LUXEPipeline/build

# Include any dependencies generated for this target.
include Run/CMakeFiles/RunTruthTracking.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include Run/CMakeFiles/RunTruthTracking.dir/compiler_depend.make

# Include the progress variables for this target.
include Run/CMakeFiles/RunTruthTracking.dir/progress.make

# Include the compile flags for this target's objects.
include Run/CMakeFiles/RunTruthTracking.dir/flags.make

Run/CMakeFiles/RunTruthTracking.dir/TruthTrackingRun.cpp.o: Run/CMakeFiles/RunTruthTracking.dir/flags.make
Run/CMakeFiles/RunTruthTracking.dir/TruthTrackingRun.cpp.o: /Users/alonlevi/CLionProjects/LUXEPipeline/Run/TruthTrackingRun.cpp
Run/CMakeFiles/RunTruthTracking.dir/TruthTrackingRun.cpp.o: Run/CMakeFiles/RunTruthTracking.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/alonlevi/CLionProjects/LUXEPipeline/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Run/CMakeFiles/RunTruthTracking.dir/TruthTrackingRun.cpp.o"
	cd /Users/alonlevi/CLionProjects/LUXEPipeline/build/Run && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Run/CMakeFiles/RunTruthTracking.dir/TruthTrackingRun.cpp.o -MF CMakeFiles/RunTruthTracking.dir/TruthTrackingRun.cpp.o.d -o CMakeFiles/RunTruthTracking.dir/TruthTrackingRun.cpp.o -c /Users/alonlevi/CLionProjects/LUXEPipeline/Run/TruthTrackingRun.cpp

Run/CMakeFiles/RunTruthTracking.dir/TruthTrackingRun.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/RunTruthTracking.dir/TruthTrackingRun.cpp.i"
	cd /Users/alonlevi/CLionProjects/LUXEPipeline/build/Run && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/alonlevi/CLionProjects/LUXEPipeline/Run/TruthTrackingRun.cpp > CMakeFiles/RunTruthTracking.dir/TruthTrackingRun.cpp.i

Run/CMakeFiles/RunTruthTracking.dir/TruthTrackingRun.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/RunTruthTracking.dir/TruthTrackingRun.cpp.s"
	cd /Users/alonlevi/CLionProjects/LUXEPipeline/build/Run && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/alonlevi/CLionProjects/LUXEPipeline/Run/TruthTrackingRun.cpp -o CMakeFiles/RunTruthTracking.dir/TruthTrackingRun.cpp.s

# Object files for target RunTruthTracking
RunTruthTracking_OBJECTS = \
"CMakeFiles/RunTruthTracking.dir/TruthTrackingRun.cpp.o"

# External object files for target RunTruthTracking
RunTruthTracking_EXTERNAL_OBJECTS =

bin/RunTruthTracking: Run/CMakeFiles/RunTruthTracking.dir/TruthTrackingRun.cpp.o
bin/RunTruthTracking: Run/CMakeFiles/RunTruthTracking.dir/build.make
bin/RunTruthTracking: lib/libActsLUXEPipelineCore.dylib
bin/RunTruthTracking: /opt/homebrew/lib/libtbb.12.13.dylib
bin/RunTruthTracking: /Users/alonlevi/CLionProjects/ACTS/install/lib/libActsPluginFpeMonitoring.dylib
bin/RunTruthTracking: /Users/alonlevi/Programs/root_install/lib/libTree.so
bin/RunTruthTracking: /Users/alonlevi/Programs/root_install/lib/libGpad.so
bin/RunTruthTracking: /Users/alonlevi/Programs/root_install/lib/libGraf.so
bin/RunTruthTracking: /Users/alonlevi/Programs/root_install/lib/libHist.so
bin/RunTruthTracking: /Users/alonlevi/CLionProjects/ACTS/install/lib/libActsPluginJson.dylib
bin/RunTruthTracking: /Users/alonlevi/CLionProjects/ACTS/install/lib/libActsFatras.dylib
bin/RunTruthTracking: /opt/homebrew/lib/libboost_serialization-mt.dylib
bin/RunTruthTracking: /Users/alonlevi/CLionProjects/ACTS/install/lib/libActsPluginGeant4.dylib
bin/RunTruthTracking: /Users/alonlevi/CLionProjects/ACTS/install/lib/libActsCore.dylib
bin/RunTruthTracking: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4Tree.dylib
bin/RunTruthTracking: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4FR.dylib
bin/RunTruthTracking: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4GMocren.dylib
bin/RunTruthTracking: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4visHepRep.dylib
bin/RunTruthTracking: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4RayTracer.dylib
bin/RunTruthTracking: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4VRML.dylib
bin/RunTruthTracking: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4ToolsSG.dylib
bin/RunTruthTracking: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4vis_management.dylib
bin/RunTruthTracking: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4modeling.dylib
bin/RunTruthTracking: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4interfaces.dylib
bin/RunTruthTracking: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4mctruth.dylib
bin/RunTruthTracking: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4geomtext.dylib
bin/RunTruthTracking: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4gdml.dylib
bin/RunTruthTracking: /opt/homebrew/lib/libxerces-c.dylib
bin/RunTruthTracking: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4error_propagation.dylib
bin/RunTruthTracking: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4readout.dylib
bin/RunTruthTracking: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4physicslists.dylib
bin/RunTruthTracking: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4run.dylib
bin/RunTruthTracking: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4event.dylib
bin/RunTruthTracking: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4tracking.dylib
bin/RunTruthTracking: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4parmodels.dylib
bin/RunTruthTracking: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4processes.dylib
bin/RunTruthTracking: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4analysis.dylib
bin/RunTruthTracking: /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/lib/libexpat.tbd
bin/RunTruthTracking: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4digits_hits.dylib
bin/RunTruthTracking: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4track.dylib
bin/RunTruthTracking: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4particles.dylib
bin/RunTruthTracking: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4geometry.dylib
bin/RunTruthTracking: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4materials.dylib
bin/RunTruthTracking: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4graphics_reps.dylib
bin/RunTruthTracking: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4intercoms.dylib
bin/RunTruthTracking: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4global.dylib
bin/RunTruthTracking: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4clhep.dylib
bin/RunTruthTracking: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4zlib.dylib
bin/RunTruthTracking: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4ptl.2.3.3.dylib
bin/RunTruthTracking: /Users/alonlevi/Programs/root_install/lib/libPhysics.so
bin/RunTruthTracking: /Users/alonlevi/Programs/root_install/lib/libMatrix.so
bin/RunTruthTracking: /Users/alonlevi/Programs/root_install/lib/libGenVector.so
bin/RunTruthTracking: /Users/alonlevi/Programs/root_install/lib/libMathCore.so
bin/RunTruthTracking: /Users/alonlevi/Programs/root_install/lib/libImt.so
bin/RunTruthTracking: /Users/alonlevi/Programs/root_install/lib/libMultiProc.so
bin/RunTruthTracking: /Users/alonlevi/Programs/root_install/lib/libNet.so
bin/RunTruthTracking: /Users/alonlevi/Programs/root_install/lib/libRIO.so
bin/RunTruthTracking: /Users/alonlevi/Programs/root_install/lib/libThread.so
bin/RunTruthTracking: /Users/alonlevi/Programs/root_install/lib/libCore.so
bin/RunTruthTracking: Run/CMakeFiles/RunTruthTracking.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/alonlevi/CLionProjects/LUXEPipeline/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/RunTruthTracking"
	cd /Users/alonlevi/CLionProjects/LUXEPipeline/build/Run && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/RunTruthTracking.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Run/CMakeFiles/RunTruthTracking.dir/build: bin/RunTruthTracking
.PHONY : Run/CMakeFiles/RunTruthTracking.dir/build

Run/CMakeFiles/RunTruthTracking.dir/clean:
	cd /Users/alonlevi/CLionProjects/LUXEPipeline/build/Run && $(CMAKE_COMMAND) -P CMakeFiles/RunTruthTracking.dir/cmake_clean.cmake
.PHONY : Run/CMakeFiles/RunTruthTracking.dir/clean

Run/CMakeFiles/RunTruthTracking.dir/depend:
	cd /Users/alonlevi/CLionProjects/LUXEPipeline/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/alonlevi/CLionProjects/LUXEPipeline /Users/alonlevi/CLionProjects/LUXEPipeline/Run /Users/alonlevi/CLionProjects/LUXEPipeline/build /Users/alonlevi/CLionProjects/LUXEPipeline/build/Run /Users/alonlevi/CLionProjects/LUXEPipeline/build/Run/CMakeFiles/RunTruthTracking.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : Run/CMakeFiles/RunTruthTracking.dir/depend

