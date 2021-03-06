---
name: TryJSDocFromTheCommandLine_A
.left-column[
  ### Command Line jsDoc (Step #1)
  <br /><br /><div class='input_type_indicator'><img src='./fragments/loader.png' /><br />No manual input required here.</div><br />
.footnote[.red.bold[] [Table of Contents](./)] 
<!-- H -->]
.right-column[
~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ - o 0 o - ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~

#### Use jsDoc on the Command Line

In a directory you specify, JSDoc creates a documentation web site like this :
```ruby
yourself@YourVM:~/projects/yourproject$ tree -L 2 ./packages/${PKG_NAME}
./packages/yourpackage
├── docs
│   ├── fonts
│   ├── index.html
│   ├── scripts
│   └── styles
├── package.js
      :  etc
      :  etc
```
##### Example Commands
```terminal
jsdoc -d ./packages/${PKG_NAME}/docs ./packages/${PKG_NAME}
tree -L 2 ./packages/${PKG_NAME}
```
continued ...
<!-- B -->
.center[.footnote[.red.bold[] <a href="https://github.com/martinhbramwell/Meteor-CI-Tutorial/blob/master/Tutorial05_AutomaticDocumentationInTheCloud/AutomaticDocumentationInTheCloud_functions.sh#L1" target="_blank">Code for this step.</a>] ]
]
