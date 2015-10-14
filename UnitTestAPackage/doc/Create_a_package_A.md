---
.left-column[
  ### Create Meteor Packages
.footnote[.red.bold[] [Table of Contents](./)] 
<!-- H -->]
.right-column[
~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ - o 0 o - ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~

#### Create a Meteor package development directory.

If you aim for "package only applications", if packages are to be reusable, your packages need independent version control, and to reside in a directory outside of the project, that you specify with Meteor's shell variable ```PACKAGE_DIRS```.

To create self-sufficient packages, begin by defining ```PACKAGE_DIRS``` as a permanent fixture of your user profile, pointing to the place where you will keep your packages.
##### Commands
```terminal
export PARENT_DIR=projects;
export PACKAGES=~/${PARENT_DIR}/packages;
export PACKAGE_DIRS=${PACKAGES}/thirdparty:${PACKAGES}/${YOUR_UID};
mkdir -p ${PACKAGES}/${YOUR_UID}; mkdir -p ${PACKAGES}/thirdparty;
export HAS_PACKAGE_DIRS=$(grep PACKAGE_DIRS ~/.profile | grep -c ${PACKAGES} ~/.profile);
[[ ${HAS_PACKAGE_DIRS} -lt 1 ]] && echo -e "\n#\nexport PACKAGE_DIRS=${PACKAGE_DIRS}" >> ~/.profile;
source ~/.profile;
```
Continued . . . 
<!-- Code for this begins at line #22 -->
<!-- B -->
.center[.footnote[.red.bold[] <a href="https://github.com/martinhbramwell/Meteor-CI-Tutorial/blob/master/Part03_UnitTestAPackage.sh#L22" target="_blank">Code for this step.</a>] ]
]