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
include Run/CMakeFiles/RunTest.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include Run/CMakeFiles/RunTest.dir/compiler_depend.make

# Include the progress variables for this target.
include Run/CMakeFiles/RunTest.dir/progress.make

# Include the compile flags for this target's objects.
include Run/CMakeFiles/RunTest.dir/flags.make

Run/CMakeFiles/RunTest.dir/TestRun.cpp.o: Run/CMakeFiles/RunTest.dir/flags.make
Run/CMakeFiles/RunTest.dir/TestRun.cpp.o: /Users/alonlevi/CLionProjects/LUXEPipeline/Run/TestRun.cpp
Run/CMakeFiles/RunTest.dir/TestRun.cpp.o: Run/CMakeFiles/RunTest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/alonlevi/CLionProjects/LUXEPipeline/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Run/CMakeFiles/RunTest.dir/TestRun.cpp.o"
	cd /Users/alonlevi/CLionProjects/LUXEPipeline/build/Run && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Run/CMakeFiles/RunTest.dir/TestRun.cpp.o -MF CMakeFiles/RunTest.dir/TestRun.cpp.o.d -o CMakeFiles/RunTest.dir/TestRun.cpp.o -c /Users/alonlevi/CLionProjects/LUXEPipeline/Run/TestRun.cpp

Run/CMakeFiles/RunTest.dir/TestRun.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/RunTest.dir/TestRun.cpp.i"
	cd /Users/alonlevi/CLionProjects/LUXEPipeline/build/Run && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/alonlevi/CLionProjects/LUXEPipeline/Run/TestRun.cpp > CMakeFiles/RunTest.dir/TestRun.cpp.i

Run/CMakeFiles/RunTest.dir/TestRun.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/RunTest.dir/TestRun.cpp.s"
	cd /Users/alonlevi/CLionProjects/LUXEPipeline/build/Run && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/alonlevi/CLionProjects/LUXEPipeline/Run/TestRun.cpp -o CMakeFiles/RunTest.dir/TestRun.cpp.s

# Object files for target RunTest
RunTest_OBJECTS = \
"CMakeFiles/RunTest.dir/TestRun.cpp.o"

# External object files for target RunTest
RunTest_EXTERNAL_OBJECTS =

bin/RunTest: Run/CMakeFiles/RunTest.dir/TestRun.cpp.o
bin/RunTest: Run/CMakeFiles/RunTest.dir/build.make
bin/RunTest: lib/libActsLUXEPipelineCore.dylib
bin/RunTest: /opt/homebrew/lib/libtbb.12.13.dylib
bin/RunTest: /Users/alonlevi/CLionProjects/ACTS/install/lib/libActsPluginFpeMonitoring.dylib
bin/RunTest: /Users/alonlevi/Programs/root_install/lib/libTree.so
bin/RunTest: /Users/alonlevi/Programs/root_install/lib/libGpad.so
bin/RunTest: /Users/alonlevi/Programs/root_install/lib/libGraf.so
bin/RunTest: /Users/alonlevi/Programs/root_install/lib/libHist.so
bin/RunTest: /Users/alonlevi/CLionProjects/ACTS/install/lib/libActsPluginJson.dylib
bin/RunTest: /Users/alonlevi/CLionProjects/ACTS/install/lib/libActsFatras.dylib
bin/RunTest: /opt/homebrew/lib/libboost_serialization-mt.dylib
bin/RunTest: /Users/alonlevi/CLionProjects/ACTS/install/lib/libActsPluginGeant4.dylib
bin/RunTest: /Users/alonlevi/CLionProjects/ACTS/install/lib/libActsCore.dylib
bin/RunTest: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4Tree.dylib
bin/RunTest: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4FR.dylib
bin/RunTest: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4GMocren.dylib
bin/RunTest: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4visHepRep.dylib
bin/RunTest: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4RayTracer.dylib
bin/RunTest: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4VRML.dylib
bin/RunTest: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4ToolsSG.dylib
bin/RunTest: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4vis_management.dylib
bin/RunTest: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4modeling.dylib
bin/RunTest: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4interfaces.dylib
bin/RunTest: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4mctruth.dylib
bin/RunTest: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4geomtext.dylib
bin/RunTest: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4gdml.dylib
bin/RunTest: /opt/homebrew/lib/libxerces-c.dylib
bin/RunTest: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4error_propagation.dylib
bin/RunTest: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4readout.dylib
bin/RunTest: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4physicslists.dylib
bin/RunTest: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4run.dylib
bin/RunTest: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4event.dylib
bin/RunTest: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4tracking.dylib
bin/RunTest: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4parmodels.dylib
bin/RunTest: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4processes.dylib
bin/RunTest: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4analysis.dylib
bin/RunTest: /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/lib/libexpat.tbd
bin/RunTest: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4digits_hits.dylib
bin/RunTest: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4track.dylib
bin/RunTest: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4particles.dylib
bin/RunTest: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4geometry.dylib
bin/RunTest: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4materials.dylib
bin/RunTest: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4graphics_reps.dylib
bin/RunTest: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4intercoms.dylib
bin/RunTest: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4global.dylib
bin/RunTest: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4clhep.dylib
bin/RunTest: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4zlib.dylib
bin/RunTest: /Users/alonlevi/Programs/geant4-v11.2.2-install/lib/libG4ptl.2.3.3.dylib
bin/RunTest: /Users/alonlevi/Programs/root_install/lib/libPhysics.so
bin/RunTest: /Users/alonlevi/Programs/root_install/lib/libMatrix.so
bin/RunTest: /Users/alonlevi/Programs/root_install/lib/libGenVector.so
bin/RunTest: /Users/alonlevi/Programs/root_install/lib/libMathCore.so
bin/RunTest: /Users/alonlevi/Programs/root_install/lib/libImt.so
bin/RunTest: /Users/alonlevi/Programs/root_install/lib/libMultiProc.so
bin/RunTest: /Users/alonlevi/Programs/root_install/lib/libNet.so
bin/RunTest: /Users/alonlevi/Programs/root_install/lib/libRIO.so
bin/RunTest: /Users/alonlevi/Programs/root_install/lib/libThread.so
bin/RunTest: /Users/alonlevi/Programs/root_install/lib/libCore.so
bin/RunTest: Run/CMakeFiles/RunTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/alonlevi/CLionProjects/LUXEPipeline/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/RunTest"
	cd /Users/alonlevi/CLionProjects/LUXEPipeline/build/Run && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/RunTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Run/CMakeFiles/RunTest.dir/build: bin/RunTest
.PHONY : Run/CMakeFiles/RunTest.dir/build

Run/CMakeFiles/RunTest.dir/clean:
	cd /Users/alonlevi/CLionProjects/LUXEPipeline/build/Run && $(CMAKE_COMMAND) -P CMakeFiles/RunTest.dir/cmake_clean.cmake
.PHONY : Run/CMakeFiles/RunTest.dir/clean

Run/CMakeFiles/RunTest.dir/depend:
	cd /Users/alonlevi/CLionProjects/LUXEPipeline/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/alonlevi/CLionProjects/LUXEPipeline /Users/alonlevi/CLionProjects/LUXEPipeline/Run /Users/alonlevi/CLionProjects/LUXEPipeline/build /Users/alonlevi/CLionProjects/LUXEPipeline/build/Run /Users/alonlevi/CLionProjects/LUXEPipeline/build/Run/CMakeFiles/RunTest.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : Run/CMakeFiles/RunTest.dir/depend

