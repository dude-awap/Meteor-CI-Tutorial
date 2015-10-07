---
.left-column[
  ### Configure git for GitHub
.footnote[.red.bold[] [Table of Contents](./)] 
<!-- H -->]
.right-column[
~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ - o 0 o - ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~

#### Configure git for use with GitHub.

In this step we set up the local git tool kit to communicate correctly with GitHub, per <a href='https://help.github.com/articles/set-up-git/' target='_blank'>their getting started guide</a>.

Steps performed :
 - identify user name
 - identify user email
 - use simple push


#####Commands
```terminal
git config --global user.name "${PACKAGE_DEVELOPER}"
git config --global user.email "${YOUR_EMAIL}"
git config --global push.default simple
```
<!-- Code for this begins at line #38 -->
<!-- B -->
.center[.footnote[.red.bold[] <a href="https://github.com/martinhbramwell/Meteor-CI-Tutorial/blob/master/Part02_VersionControlInTheCloud.sh#L38" target="_blank">Code for this step.</a>] ]
]