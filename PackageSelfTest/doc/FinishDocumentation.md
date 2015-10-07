---
.left-column[
  ### Finish Documentation
.footnote[.red.bold[] [Table of Contents](./)]
<!-- H -->]
.right-column[
~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ - o 0 o - ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~

#### The Package Works But It Is Not Documented

<a href='https://raw.githubusercontent.com/martinhbramwell/Meteor-CI-Tutorial/master/fragments/yourpackage_documented.js' target='_blank'>yourpackage_documented.js</a> is a documented replacement for the previously created file ${PKG_NAME}.js.<div style="word-wrap:break-word;">Rerunning jsDoc now will generate a much more complete documentation site than before.  View it at : <a href='file:///home/${USER}/${PARENT_DIR}/${PROJECT_NAME}/packages/${PKG_NAME}/docs/index.html' target='_blank'>```file:///home/${USER}/${PARENT_DIR}/${PROJECT_NAME}/packages/${PKG_NAME}/docs/index.html```</a></div>

##### Commands
```terminal
pushd ./packages/${PKG_NAME};
wget -O ${PKG_NAME}.js https://raw.githubusercontent.com/martinhbramwell/Meteor-CI-Tutorial/master/fragments/yourpackage_documented.js
jsdoc -d ./docs . ./nightwatch
popd;
```

Continues ...

<!-- Code for this begins at line #50 -->
<!-- B -->
.center[.footnote[.red.bold[] <a href="https://github.com/martinhbramwell/Meteor-CI-Tutorial/blob/master/Part09_PackageSelfTest.sh#L50" target="_blank">Code for this step.</a>] ]
]