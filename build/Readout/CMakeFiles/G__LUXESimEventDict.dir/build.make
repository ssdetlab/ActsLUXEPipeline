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
include Readout/CMakeFiles/G__LUXESimEventDict.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include Readout/CMakeFiles/G__LUXESimEventDict.dir/compiler_depend.make

# Include the progress variables for this target.
include Readout/CMakeFiles/G__LUXESimEventDict.dir/progress.make

# Include the compile flags for this target's objects.
include Readout/CMakeFiles/G__LUXESimEventDict.dir/flags.make

Readout/G__LUXESimEventDict.cxx: /Users/alonlevi/CLionProjects/LUXEPipeline/Readout/include/ActsLUXEPipeline/detail/LinkDef.h
Readout/G__LUXESimEventDict.cxx: /Users/alonlevi/CLionProjects/LUXEPipeline/Readout/include/ActsLUXEPipeline/detail/ROOTDictDefs.h
Readout/G__LUXESimEventDict.cxx: /Users/alonlevi/CLionProjects/LUXEPipeline/Readout/include/ActsLUXEPipeline/detail/ROOTDictDefs.h
Readout/G__LUXESimEventDict.cxx: /Users/alonlevi/CLionProjects/LUXEPipeline/Readout/include/ActsLUXEPipeline/detail/LinkDef.h
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/alonlevi/CLionProjects/LUXEPipeline/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating G__LUXESimEventDict.cxx, ../lib/libLUXESimEventDict_rdict.pcm, ../lib/libLUXESimEventDict.rootmap"
	cd /Users/alonlevi/CLionProjects/LUXEPipeline/build/Readout && /Applications/CMake.app/Contents/bin/cmake -E env DYLD_LIBRARY_PATH=/Users/alonlevi/Programs/root_install/lib: /Users/alonlevi/Programs/root_install/bin/rootcling -v2 -f G__LUXESimEventDict.cxx -s /Users/alonlevi/CLionProjects/LUXEPipeline/build/lib/libLUXESimEventDict.dylib -rml libLUXESimEventDict.dylib -rmf /Users/alonlevi/CLionProjects/LUXEPipeline/build/lib/libLUXESimEventDict.rootmap -compilerI/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include/c++/v1 -compilerI/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/15.0.0/include -compilerI/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.5.sdk/usr/include -compilerI/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include -I/Users/alonlevi/CLionProjects/LUXEPipeline/Readout/include/ActsLUXEPipeline/detail -I/Users/alonlevi/CLionProjects/LUXEPipeline/Readout -I/Users/alonlevi/CLionProjects/LUXEPipeline/Readout/include/ActsLUXEPipeline/detail -I/Users/alonlevi/Programs/root_install/include ./include/ActsLUXEPipeline/detail/ROOTDictDefs.h /Users/alonlevi/CLionProjects/LUXEPipeline/Readout/./include/ActsLUXEPipeline/detail/LinkDef.h

lib/libLUXESimEventDict_rdict.pcm: Readout/G__LUXESimEventDict.cxx
	@$(CMAKE_COMMAND) -E touch_nocreate lib/libLUXESimEventDict_rdict.pcm

lib/libLUXESimEventDict.rootmap: Readout/G__LUXESimEventDict.cxx
	@$(CMAKE_COMMAND) -E touch_nocreate lib/libLUXESimEventDict.rootmap

Readout/CMakeFiles/G__LUXESimEventDict.dir/G__LUXESimEventDict.cxx.o: Readout/CMakeFiles/G__LUXESimEventDict.dir/flags.make
Readout/CMakeFiles/G__LUXESimEventDict.dir/G__LUXESimEventDict.cxx.o: Readout/G__LUXESimEventDict.cxx
Readout/CMakeFiles/G__LUXESimEventDict.dir/G__LUXESimEventDict.cxx.o: Readout/CMakeFiles/G__LUXESimEventDict.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/alonlevi/CLionProjects/LUXEPipeline/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object Readout/CMakeFiles/G__LUXESimEventDict.dir/G__LUXESimEventDict.cxx.o"
	cd /Users/alonlevi/CLionProjects/LUXEPipeline/build/Readout && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Readout/CMakeFiles/G__LUXESimEventDict.dir/G__LUXESimEventDict.cxx.o -MF CMakeFiles/G__LUXESimEventDict.dir/G__LUXESimEventDict.cxx.o.d -o CMakeFiles/G__LUXESimEventDict.dir/G__LUXESimEventDict.cxx.o -c /Users/alonlevi/CLionProjects/LUXEPipeline/build/Readout/G__LUXESimEventDict.cxx

Readout/CMakeFiles/G__LUXESimEventDict.dir/G__LUXESimEventDict.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/G__LUXESimEventDict.dir/G__LUXESimEventDict.cxx.i"
	cd /Users/alonlevi/CLionProjects/LUXEPipeline/build/Readout && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/alonlevi/CLionProjects/LUXEPipeline/build/Readout/G__LUXESimEventDict.cxx > CMakeFiles/G__LUXESimEventDict.dir/G__LUXESimEventDict.cxx.i

Readout/CMakeFiles/G__LUXESimEventDict.dir/G__LUXESimEventDict.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/G__LUXESimEventDict.dir/G__LUXESimEventDict.cxx.s"
	cd /Users/alonlevi/CLionProjects/LUXEPipeline/build/Readout && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/alonlevi/CLionProjects/LUXEPipeline/build/Readout/G__LUXESimEventDict.cxx -o CMakeFiles/G__LUXESimEventDict.dir/G__LUXESimEventDict.cxx.s

G__LUXESimEventDict: Readout/CMakeFiles/G__LUXESimEventDict.dir/G__LUXESimEventDict.cxx.o
G__LUXESimEventDict: Readout/CMakeFiles/G__LUXESimEventDict.dir/build.make
.PHONY : G__LUXESimEventDict

# Rule to build all files generated by this target.
Readout/CMakeFiles/G__LUXESimEventDict.dir/build: G__LUXESimEventDict
.PHONY : Readout/CMakeFiles/G__LUXESimEventDict.dir/build

Readout/CMakeFiles/G__LUXESimEventDict.dir/clean:
	cd /Users/alonlevi/CLionProjects/LUXEPipeline/build/Readout && $(CMAKE_COMMAND) -P CMakeFiles/G__LUXESimEventDict.dir/cmake_clean.cmake
.PHONY : Readout/CMakeFiles/G__LUXESimEventDict.dir/clean

Readout/CMakeFiles/G__LUXESimEventDict.dir/depend: Readout/G__LUXESimEventDict.cxx
Readout/CMakeFiles/G__LUXESimEventDict.dir/depend: lib/libLUXESimEventDict.rootmap
Readout/CMakeFiles/G__LUXESimEventDict.dir/depend: lib/libLUXESimEventDict_rdict.pcm
	cd /Users/alonlevi/CLionProjects/LUXEPipeline/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/alonlevi/CLionProjects/LUXEPipeline /Users/alonlevi/CLionProjects/LUXEPipeline/Readout /Users/alonlevi/CLionProjects/LUXEPipeline/build /Users/alonlevi/CLionProjects/LUXEPipeline/build/Readout /Users/alonlevi/CLionProjects/LUXEPipeline/build/Readout/CMakeFiles/G__LUXESimEventDict.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : Readout/CMakeFiles/G__LUXESimEventDict.dir/depend

