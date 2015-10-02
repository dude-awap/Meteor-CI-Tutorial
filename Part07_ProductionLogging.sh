#!/bin/bash
set -e
#
if [[ $EUID -eq 0 ]]; then
   echo -e "This script SHOULD NOT be run with 'sudo' (as root). "
   exit 1
fi


DOCS="./ProductionLogging/doc"
source ./explain.sh
source ./util.sh


explain ${DOCS}/Introduction.md


echo ""
echo ""
explain ${DOCS}/Observe_ordinary_console_logging.md

echo ""
echo ""
explain ${DOCS}/Add_an_NPM_module_to_your_package.md

echo ""
echo ""
explain ${DOCS}/Specify_Npm_modules.md

echo ""
echo ""
explain ${DOCS}/Bunyan_Server_Side_OnlyLogging.md

echo ""
echo ""
explain ${DOCS}/Add_Bunyan_Logging.md

echo ""
echo ""
explain ${DOCS}/Goodbye_console.md

echo ""
echo ""
explain ${DOCS}/Refactor_Bunyan_InstantiationA.md

echo ""
echo ""
explain ${DOCS}/Refactor_Bunyan_InstantiationB.md


## FLAG FOR INCLUSION IN SLIDES - ${DOCS}/Fin.md explain

echo ""
echo -e "\nDone.  Now start up ./Part08_RealWorldPackage.sh";

exit 0;

