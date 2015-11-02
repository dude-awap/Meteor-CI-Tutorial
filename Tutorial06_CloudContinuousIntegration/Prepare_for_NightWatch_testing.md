---
.left-column[
  ### Set Up Nightwatch
  <br /><br /><div class="input_type_indicator"><img src="./fragments/loader.gif" /><br />No manual input required here.</div><br />
.footnote[.red.bold[] [Table of Contents](./)] 
<!-- H -->]
.right-column[
~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ - o 0 o - ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~

#### Prepare for NightWatch testing.

Nightwatch tests applications end-to-end by directly controlling the browser.  Meteor has full support for TinyTests running as part of Meteor itself, but NightWatch has no such support and runs in its own NodeJS process apart from Meteor's NodeJs process.  It can even run on a different machine.

To install: pull this file out of GitHub
```terminal
wget -N https://github.com/warehouseman/meteor-nightwatch-runner/raw/modularize/meteor-nightwatch-runner.run
```
then make it executable and run it.

The installer prepares a Nightwatch test directory and then deletes itself, leaving only what's necessary. It includes a sample ```circle.yml``` that expects the TinyTest runner to have been installed first; it will run TinyTests and Nightwatch tests in CircleCI one after the other.


<!-- B -->
.center[.footnote[.red.bold[] <a href="https://github.com/martinhbramwell/Meteor-CI-Tutorial/blob/modularize/Tutorial06_CloudContinuousIntegration/CloudContinuousIntegration_functions.sh#L67" target="_blank">Code for this step.</a>] ]
]