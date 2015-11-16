#!/bin/bash

set -e;
#
declare NOT_TESTING=true;  # true OR false
declare NONSTOP="nonstop";
CRP=$(sudo pwd);

source ./scripts/util.sh
checkForVirtualMachine;
echo -e "\n   Checked for virtual machine\n          - o 0 o - \n";

## MYAUTH="\"Authorization: token af8e88bf5ededc05916a6a588d7e191c6123\"";
## GITHUB="https://api.github.com/repos/0ur0rg";
## curl -X DELETE -H "${MYAUTH}" ${GITHUB}/prj09  &&  curl -X DELETE -H "${MYAUTH}" ${GITHUB}/pkg09 && rm -fr .ssh/config && rm -fr .ssh/github-0ur0rg-p* && rm -fr ~/project_isle

verifyFreeSpace;
echo -e "\n   Verified Free Space\n          - o 0 o - \n";
checkNotRoot;
# verifyRootUser;

${NOT_TESTING} && {
  if ! getUserData; then didNotGetUserData; fi;
  if ! getNonStopData; then didNotGetNSData; fi;
}
export PACKAGES=~/${PARENT_DIR}/packages;

collectSectionNames;
# Loop through all sections getting their functions
II=1;
# echo "Getting functions from: ";
while [ ${II} -lt ${#TUTORIAL_SECTIONS[@]} ]
do
  setSection ${II};
#  echo " - ${BINDIR}/${SECTION}_functions.sh";
  source "${BINDIR}/${SECTION}_functions.sh";
  II=$[$II+1]
done;

${NOT_TESTING} && {
  installToolsForTheseScripts;
  echo -e "\n   Installed Tools For These Scripts\n          - o 0 o - \n";
}


source ./scripts/explain.sh
RUN_RULE="";

${NOT_TESTING} && {
  Install_other_tools;
  echo -e "\n   Installed Other Tools\n          - o 0 o - \n";
}

Configure_git_for_GitHub;
echo -e "\n   Configured git for GitHub\n          - o 0 o - \n";

set +e; killall -qs SIGKILL ssh-agent; set -e;
echo -e "\n   killed extraneous ssh-agent instances\n          - o 0 o - \n";

# highlight ${BINDIR}/Introduction.md # explain
# echo ""
# echo "To view this embedded documentation as a browser slideshow, choose one of the following options:"
# echo " A) Open your browser to http://martinhbramwell.github.io/Meteor-CI-Tutorial/"
# echo " B) If you have Python in your machine (you have '$(python -c "import sys;t='{v[0]}.{v[1]}'.format(v=list(sys.version_info[:2]));sys.stdout.write(t)";)') you can do :"
# echo " - execute : ./concatenateTheSlides.sh n"
# echo " - then execute : python -m SimpleHTTPServer 8080"
# echo " - then launch your browser and open : http://localhost:8080/"
# echo " C) If you already know Meteor, you can just stuff a copy of this directory in the 'public' directory of a Meteor app."
# echo ""
# read -p "Hit <enter> ::  " -n 1 -r REPLY

setSection 1;

# RUN_RULE="";
# explain ${BINDIR}/Java_7_is_required_by_Nightwatch.md MORE_ACTION # CODE_BLOCK
# if [ "${RUN_RULE}" != "n" ]; then
${NOT_TESTING} && {
  Java_7_is_required_by_Nightwatch_A;
  This_tutorial_expects_to_use_the_Sublime_Text_3_editor_A;

  # will NOT call "sudo apt-get update;" because Node  JS installer does it.
  Install_NodeJS;

  Java_7_is_required_by_Nightwatch_B;
  echo -e "\n   Installed Java\n          - o 0 o - \n";
}
# fi;

# explain ${BINDIR}/Install_other_tools.md MORE_ACTION # CODE_BLOCK
# if [ "${RUN_RULE}" != "n" ]; then
  # Install_other_tools;
# fi;

# explain ${BINDIR}/Install_NodeJS.md MORE_ACTION # CODE_BLOCK
# if [ "${RUN_RULE}" != "n" ]; then
# ${NOT_TESTING} && Install_NodeJS;
# fi;

# explain ${BINDIR}/Install_Selenium_Webdriver_In_NodeJS.md MORE_ACTION # CODE_BLOCK
# if [ "${RUN_RULE}" != "n" ]; then
  ${NOT_TESTING} && {
    Install_Selenium_Webdriver_In_NodeJS;
    echo -e "\n   Install Selenium Webdriver In NodeJS\n          - o 0 o - \n";
  }
# fi;

# explain ${BINDIR}/Install_Google_Chrome_and_the_Selenium_Web_Driver_for_Chrome.md MORE_ACTION # CODE_BLOCK
# if [ "${RUN_RULE}" != "n" ]; then
  ${NOT_TESTING} && {
    Install_Google_Chrome_and_the_Selenium_Web_Driver_for_Chrome;
    echo -e "\n   Installed Google Chrome and the Selenium Web Driver for Chrome\n          - o 0 o - \n";
  }
# fi;
# explain ${BINDIR}/Install_Bunyan_Globally.md MORE_ACTION # CODE_BLOCK
# if [ "${RUN_RULE}" != "n" ]; then
  ${NOT_TESTING} && {
    Install_Bunyan_Globally;
    echo -e "\n   Installed Bunyan Globally\n          - o 0 o - \n";
  }
# fi;

# explain ${BINDIR}/This_tutorial_expects_to_use_the_Sublime_Text_3_editor.md MORE_ACTION # CODE_BLOCK
# if [ "${RUN_RULE}" != "n" ]; then
  ${NOT_TESTING} && {
    This_tutorial_expects_to_use_the_Sublime_Text_3_editor_B;
    echo -e "\n   Prepared the Sublime Text editor\n          - o 0 o - \n";
  }
# fi;

# explain ${BINDIR}/Install_eslint.md MORE_ACTION # CODE_BLOCK
# if [ "${RUN_RULE}" != "n" ]; then
  ${NOT_TESTING} && {
    Install_eslint;
    echo -e "\n   Installed ESLint\n          - o 0 o - \n";
  }
# fi;

# explain ${BINDIR}/Install_jsdoc.md ACTION # CODE_BLOCK
# if [ "${RUN_RULE}" != "n" ]; then
  ${NOT_TESTING} && {
    Install_jsdoc;
    echo -e "\n   Installed JSDoc\n          - o 0 o - \n";
  }
# fi;


EnforceOwnershipAndPermissions;

setSection 2;

# export SECTION_NUM="2";
# export SECTION="VersionControlInTheCloud";
# export NEXT_SECTION="UnitTestAPackage";
# printf -v BINDIR "./Tutorial%02d_%s" ${SECTION_NUM} ${SECTION};
# source "${BINDIR}/${SECTION}_functions.sh";


# explain ${BINDIR}/Configure_git_for_GitHub.md MORE_ACTION # CODE_BLOCK
# if [ "${RUN_RULE}" != "n" ]; then
# Configure_git_for_GitHub;
# fi;

# explain ${BINDIR}/Install_Meteor.md MORE_ACTION # CODE_BLOCK
# if [ "${RUN_RULE}" != "n" ]; then
  ${NOT_TESTING} && {
    Install_Meteor ${FORCE};
    echo -e "\n   Installed Meteor\n          - o 0 o - \n";
  }
# fi;



echo -e "\n - o 0 o -|||||||||||||| \n";
NOT_TESTING=true;



# explain ${BINDIR}/Create_GitHub_Repo_Deploy_Keys.md MORE_ACTION # CODE_BLOCK
# if [ "${RUN_RULE}" != "n" ]; then
  ${NOT_TESTING} && {
    Create_GitHub_Repo_Deploy_Keys ${PROJECT_NAME} ${REPLACE_EXISTING_PROJECT};
    echo -e "\n   Created GitHub Repo Deploy Keys for '${PROJECT_NAME}'?\n          - o 0 o - \n";
  }
# fi;

# explain ${BINDIR}/Create_remote_GitHub_repository_A.md MORE_ACTION # CODE_BLOCK
# if [ "${RUN_RULE}" != "n" ]; then

  ${NOT_TESTING} && {
    Create_GitHub_Repo_For_Org ${PROJECT_NAME} ${REPLACE_EXISTING_PROJECT};
    echo -e "\n   Created GitHub Repo For '${PROJECT_NAME}' \n          - o 0 o - \n";
  }


# explain ${BINDIR}/Create_remote_GitHub_repository_B.md MORE_ACTION # CODE_BLOCK MANUAL_INPUT_REQUIRED
# if [ "${RUN_RULE}" != "n" ]; then Create_remote_GitHub_repository_B; fi;

  ${NOT_TESTING} && {
    Add_GitHub_Repo_Deploy_Key ${PROJECT_NAME}  ${REPLACE_EXISTING_PROJECT};
    echo -e "\n   Added GitHub Repo Deploy Key for '${PROJECT_NAME}'\n          - o 0 o - \n";
  }


# explain ${BINDIR}/Create_Meteor_project.md MORE_ACTION # CODE_BLOCK
# if [ "${RUN_RULE}" != "n" ]; then
  ${NOT_TESTING} && {
    Create_Meteor_project;
    echo -e "\n   Created Meteor project '${PROJECT_NAME}' \n          - o 0 o - \n";
  }
# fi;

# explain ${BINDIR}/Check_the_meteor_project_will_work.md MORE_ACTION # CODE_BLOCK
# if [ "${RUN_RULE}" != "n" ]; then
#   export METEOR_PORT=3000
#   Check_the_meteor_project_will_work;
# fi;


export GITHUB_RAW="https://raw.githubusercontent.com/warehouseman/meteor-swagger-client/master/.eslintrc"
# explain ${BINDIR}/Add_Meteor_application_development_support_files.md MORE_ACTION # CODE_BLOCK
# if [ "${RUN_RULE}" != "n" ]; then
  ${NOT_TESTING} && {
    Add_Meteor_application_development_support_files;
    echo -e "\n   Added Meteor application development support files\n          - o 0 o - \n";
  }
# fi;

# explain ${BINDIR}/Create_GitHub_Repo_Deploy_Keys.md MORE_ACTION # CODE_BLOCK
# if [ "${RUN_RULE}" != "n" ]; then
#   Create_GitHub_Repo_Deploy_Keys ${PROJECT_NAME};
# fi;

# explain ${BINDIR}/Create_remote_GitHub_repository_A.md #

# RUN_RULE="";
# explain ${BINDIR}/Create_remote_GitHub_repository_B.md MORE_ACTION # CODE_BLOCK MANUAL_INPUT_REQUIRED
# if [ "${RUN_RULE}" != "n" ]; then
#  Create_remote_GitHub_repository_B;
# fi;

# explain ${BINDIR}/Create_local_GitHub_repository.md MORE_ACTION # CODE_BLOCK
# if [ "${RUN_RULE}" != "n" ]; then
  ${NOT_TESTING} && {
    Create_local_GitHub_repository ${NONSTOP};
    echo -e "\n   Created local GitHub repository for '${PROJECT_NAME}'\n          - o 0 o - \n";
  }
# fi;



setSection 3;


# explain ${BINDIR}/Create_a_package_A.md MORE_ACTION # CODE_BLOCK
# if [ "${RUN_RULE}" != "n" ]; then
  ${NOT_TESTING} && {
    Create_a_package_A;
    echo -e "\n   Created package '${PKG_NAME}': A\n          - o 0 o - \n";
  }
# fi;



# explain ${BINDIR}/Create_a_package_B.md MORE_ACTION # CODE_BLOCK
# if [ "${RUN_RULE}" != "n" ]; then
  ${NOT_TESTING} && {
    Create_a_package_B;
    echo -e "\n   Created package '${PKG_NAME}' : B\n          - o 0 o - \n";
  }
# fi;

# explain ${BINDIR}/Create_a_package_C.md MORE_ACTION # CODE_BLOCK
# if [ "${RUN_RULE}" != "n" ]; then
  ${NOT_TESTING} && {
    Create_a_package_C;
    echo -e "\n   Created package '${PKG_NAME}' : C\n          - o 0 o - \n";
  }
# fi;




# explain ${BINDIR}/Create_GitHub_Repo_Deploy_Keys.md MORE_ACTION # CODE_BLOCK
# if [ "${RUN_RULE}" != "n" ]; then
#   Create_GitHub_Repo_Deploy_Keys;
# fi;
  ${NOT_TESTING} && {
    Create_GitHub_Repo_Deploy_Keys ${PKG_NAME} ${REPLACE_EXISTING_PACKAGE};
    echo -e "\n   Created GitHub Repo Deploy Keys for '${PKG_NAME}'\n          - o 0 o - \n";
  }


  ${NOT_TESTING} && {
    Create_GitHub_Repo_For_Org ${PKG_NAME} ${REPLACE_EXISTING_PACKAGE};
    echo -e "\n   Created GitHub Repo for '${PKG_NAME}'\n          - o 0 o - \n";
  }



# RUN_RULE="";
# explain ${BINDIR}/Control_a_packages_versions_A.md MORE_ACTION # CODE_BLOCK MANUAL_INPUT_REQUIRED
# if [ "${RUN_RULE}" != "n" ]; then
  ${NOT_TESTING} && {
    Control_a_packages_versions_A ${NONSTOP};
    echo -e "\n   Controlling '${PKG_NAME}' package's versions : A\n          - o 0 o - \n";
  }
# fi;


  ${NOT_TESTING} && {
    Add_GitHub_Repo_Deploy_Key ${PKG_NAME}  ${REPLACE_EXISTING_PACKAGE};
    echo -e "\n   Added GitHub Repo Deploy Key for '${PKG_NAME}' \n          - o 0 o - \n";
  }

# explain ${BINDIR}/Control_a_packages_versions_B.md  MORE_ACTION # CODE_BLOCK
# if [ "${RUN_RULE}" != "n" ]; then
  ${NOT_TESTING} && {
    Control_a_packages_versions_B;
    echo -e "\n   Controlled '${PKG_NAME}' package's versions : B\n          - o 0 o - \n";
  }
# fi;


# explain ${BINDIR}/TinyTest_a_package.md MORE_ACTION # CODE_BLOCK
# if [ "${RUN_RULE}" != "n" ]; then
#   TinyTest_a_package;
# fi;

# explain ${BINDIR}/Add_a_test_runner_for_getting_TinyTest_output_on_the_command_line.md MORE_ACTION # CODE_BLOCK
# if [ "${RUN_RULE}" != "n" ]; then
  ${NOT_TESTING} && {
    Add_a_test_runner_for_getting_TinyTest_output_on_the_command_line ${NONSTOP};
    echo -e "\n   Added a test runner for getting TinyTest output on the command line. : B\n          - o 0 o - \n";
  }
# fi;





#    ~    ~    ~    ~    ~    ~    ~    ~    ~    ~    ~    ~    ~    ~    ~
  ${NOT_TESTING} && {

    setSection 4;

    Customize_ESLint_in_Sublime_Text;
    echo -e "\n   Customized ESLint in Sublime Text. : \n          - o 0 o - \n";

    Correct_the_indicated_code_quality_defects;
    echo -e "\n   Corrected the indicated code-quality defects. : \n          - o 0 o - \n";

    Try_ESLint_Command_Line_Again;
    echo -e "\n   Corrected the indicated code-quality defects. : \n          - o 0 o - \n";

  }





#    ~    ~    ~    ~    ~    ~    ~    ~    ~    ~    ~    ~    ~    ~    ~
  ${NOT_TESTING} && {

    setSection 5;

# explain ${BINDIR}/Try_jsDoc_from_the_Command_Line_A.md MORE_ACTION # CODE_BLOCK
# if [ "${RUN_RULE}" != "n" ]; then
    Try_jsDoc_from_the_Command_Line_A;
    echo -e "\n   Ran jsDoc against ./packages/${PKG_NAME}\n          - o 0 o - \n";
# fi;

# explain ${BINDIR}/Try_jsDoc_from_the_Command_Line_B.md MORE_ACTION # CODE_BLOCK
# if [ "${RUN_RULE}" != "n" ]; then
#   Try_jsDoc_from_the_Command_Line_B;
# fi;

# RUN_RULE="";
# explain ${BINDIR}/Configure_Sublime_Text_to_use_jsDoc.md # MANUAL_INPUT_REQUIRED

# explain ${BINDIR}/Use_Sublime_Text_jsDoc_plugin_A.md MORE_ACTION # CODE_BLOCK
# if [ "${RUN_RULE}" != "n" ]; then
    Use_Sublime_Text_jsDoc_plugin_A;
    echo -e "\n   Patched ./packages/${PKG_NAME}/${PKG_NAME}-tests.js for slide 5\n          - o 0 o - \n";
# fi;

# RUN_RULE="";
# explain ${BINDIR}/Use_Sublime_Text_jsDoc_plugin_B.md # MANUAL_INPUT_REQUIRED
# if [ "${RUN_RULE}" != "n" ]; then
    Use_Sublime_Text_jsDoc_plugin_B;
    echo -e "\n   Patched ./packages/${PKG_NAME}/${PKG_NAME}-tests.js for slide 6\n          - o 0 o - \n";

# explain ${BINDIR}/Use_Sublime_Text_jsDoc_plugin_C.md MORE_ACTION # CODE_BLOCK
# if [ "${RUN_RULE}" != "n" ]; then
    Use_Sublime_Text_jsDoc_plugin_C;
    echo -e "\n   Rebuilt documentation after patches\n          - o 0 o - \n";
# fi;

# RUN_RULE="";
# explain ${BINDIR}/Publish_jsDocs_toGitHub_A.md

# TEMP_ZIP="/tmp/${PKG_NAME}_BINDIR.zip"
# explain ${BINDIR}/Publish_jsDocs_toGitHub_B.md MORE_ACTION # CODE_BLOCK
# if [ "${RUN_RULE}" != "n" ]; then
    Publish_jsDocs_toGitHub_B;
    echo -e "\n   Published documentation to GitHub pages\n          - o 0 o - \n";
# fi;

  }



#    ~    ~    ~    ~    ~    ~    ~    ~    ~    ~    ~    ~    ~    ~    ~
  ${NOT_TESTING} && {

    setSection 6;

    # explain ${BINDIR}/Connect_CircleCI_to_GitHub.md # MANUAL_INPUT_REQUIRED

    # explain ${BINDIR}/Add_a_CircleCI_configuration_file_and_push_to_GitHub.md MORE_ACTION # CODE_BLOCK
    # if [ "${RUN_RULE}" != "n" ]; then
      Add_a_CircleCI_configuration_file_and_push_to_GitHub ${NONSTOP};
      echo -e "\n   Added a CircleCI configuration file and push to GitHub\n          - o 0 o - \n";
    # fi;

    # explain ${BINDIR}/Amend_the_configuration_and_push_again.md MORE_ACTION # CODE_BLOCK
    # if [ "${RUN_RULE}" != "n" ]; then
      Amend_the_configuration_and_push_again ${NONSTOP};
      echo -e "\n   Amended the configuration and push again\n          - o 0 o - \n";
    # fi;

    # explain ${BINDIR}/Prepare_for_NightWatch_testing.md MORE_ACTION # CODE_BLOCK
    # if [ "${RUN_RULE}" != "n" ]; then
      Prepare_for_NightWatch_testing;
      echo -e "\n   Prepared for NightWatch testing\n          - o 0 o - \n";
    # fi;

    # explain ${BINDIR}/Run_NightWatch_testing.md MORE_ACTION # CODE_BLOCK
    # if [ "${RUN_RULE}" != "n" ]; then
      Run_NightWatch_testing ${NONSTOP};
      echo -e "\n   Ran NightWatch_testing\n          - o 0 o - \n";
    # fi;

    # explain ${BINDIR}/Configure_CircleCI_for_Nightwatch_Testing.md MORE_ACTION # CODE_BLOCK
    # if [ "${RUN_RULE}" != "n" ]; then
      Configure_CircleCI_for_Nightwatch_Testing;
      echo -e "\n   Configured CircleCI for Nightwatch Testing\n          - o 0 o - \n";
    # fi;


  }



#    ~    ~    ~    ~    ~    ~    ~    ~    ~    ~    ~    ~    ~    ~    ~
  ${NOT_TESTING} && {

    setSection 7;

    # RUN_RULE="";
    # explain ${BINDIR}/Observe_ordinary_console_logging.md # MANUAL_INPUT_REQUIRED

    # RUN_RULE="";
    # explain ${BINDIR}/Add_an_NPM_module_to_your_package.md # MANUAL_INPUT_REQUIRED

    # RUN_RULE="";
    # explain ${BINDIR}/Specify_Npm_modules.md # MANUAL_INPUT_REQUIRED

    # RUN_RULE="";
    # explain ${BINDIR}/Bunyan_Server_Side_OnlyLogging.md # MANUAL_INPUT_REQUIRED

    # RUN_RULE="";
    # explain ${BINDIR}/Add_Bunyan_Logging.md # MANUAL_INPUT_REQUIRED

    # RUN_RULE="";
    # explain ${BINDIR}/Goodbye_console.md # MANUAL_INPUT_REQUIRED

    # RUN_RULE="";
    # explain ${BINDIR}/Refactor_Bunyan_InstantiationA.md MORE_ACTION # CODE_BLOCK MANUAL_INPUT_REQUIRED
    # if [ "${RUN_RULE}" != "n" ]; then
      Refactor_Bunyan_InstantiationA;
    # fi;

    # RUN_RULE="";
    # explain ${BINDIR}/Refactor_Bunyan_InstantiationB.md # MANUAL_INPUT_REQUIRED

      Refactor_Bunyan_InstantiationB;

    # explain ${BINDIR}/Package_Upgrade_and_Project_Rebuild_A.md MORE_ACTION # CODE_BLOCK
    # if [ "${RUN_RULE}" != "n" ]; then
    #   # Package_Upgrade_and_Project_Rebuild_A;
    # fi;

    # explain ${BINDIR}/Package_Upgrade_and_Project_Rebuild_B.md MORE_ACTION # CODE_BLOCK
    # if [ "${RUN_RULE}" != "n" ]; then
      Package_Upgrade_and_Project_Rebuild_B;
    # fi;

}

   echo "                   - o 0 o - "; exit;








#    ~    ~    ~    ~    ~    ~    ~    ~    ~    ~    ~    ~    ~    ~    ~
  ${NOT_TESTING} && {

    setSection 1;

    highlight ${BINDIR}/Configure_Sublime_A.md; # CODE_BLOCK explain MANUAL_INPUT_REQUIRED
    echo "";
    Configure_Sublime_A;
    echo "";
    read -p "Hit <enter> ::  " -n 1 -r REPLY;


    highlight ${BINDIR}/Configure_Sublime_B.md; # explain MANUAL_INPUT_REQUIRED
    echo "";
    read -p "Hit <enter> ::  " -n 1 -r REPLY;

  }



#    ~    ~    ~    ~    ~    ~    ~    ~    ~    ~    ~    ~    ~    ~    ~
  ${NOT_TESTING} && {

    setSection 4;

    explain ${BINDIR}/Configure_Sublime_Text_to_use_ESLint.md; # MANUAL_INPUT_REQUIRED

  }



#    ~    ~    ~    ~    ~    ~    ~    ~    ~    ~    ~    ~    ~    ~    ~
  ${NOT_TESTING} && {

    setSection 6;

    explain ${BINDIR}/Connect_CircleCI_to_GitHub.md # MANUAL_INPUT_REQUIRED

  }


echo -e "\n - o 0 o -|||||||||||||| \n";
NOT_TESTING=true;



   echo "                   - o 0 o - "; exit;

exit 0;
