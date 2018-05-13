#!/bin/bash

# Making a Build Directory for the MilliQ simulation!
# mkdir MilliQBuild, which will be a build folder for milliQan simulation. Make sure to put the Build Folder outside of milliQan. 
# cd into this MilliQBuild folder.
# cmake -DGeant4_DIR=PATH_TO_GEANT4_BUILD/lib/Geant4-version# PATH_TO_/milliQan/geant4
cmake -DGeant4_DIR=/Users/chaffy/Work/geant4.10.02.p02-build/lib/Geant4-10.2.2/ /Users/chaffy/Work/Repository_MilliCharged/milliQan/geant4/

#If you want to use Eclipse and an IDE....
#once the above commands have been run, cd into the MilliQBuild folder and run this command. The last argument is the path to milliQan/geant4 code.
cmake -G"Eclipse CDT4 - Unix Makefiles" -D CMAKE_BUILD_TYPE=Debug ../milliQan/geant4/
# once this has been run, open Eclipse, choose File->New->Makefile Project With Existing Code, and point it to the MilliQBuild directory.

# Important line for Installing Geant4, see website for full instructions
# Quick installation command for installing Geant4 with all the relevant flags. See website for more comprehensive options.
# cmake -DCMAKE_INSTALL_PREFIX=/Users/chaffy/Work/geant4.10.02.p02-build/ -DGEANT4_USE_QT=ON -DGEANT4_USE_OPENGL_X11=OFF -DGEANT4_INSTALL_DATA=ON /Users/chaffy/Work/geant4.10.02.p02/

