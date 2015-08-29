---
.left-column[
  ### Selenium Web Driver for NodeJS
.footnote[.red.bold[] [Back to TOC](./)] 
<!-- H -->]
.right-column[
~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ - o 0 o - ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~

#### Install 'selenium-webdriver' in NodeJS

The [NodeJS](https://nodejs.org/) module [Selenium Webdriver](https://github.com/SeleniumHQ/selenium) is required for running Meteor TinyTest on the command line, rather than in a browser.  **Note**: The next step after this one installs a different Seleniun driver.

We must first ensure that root has not taken ownership of the local .npm directory *(that can happen if you ran npm with sudo when you didn't need to)*.
##### Commands
```terminal
sudo chown -R ${USER}:${USER} ~/.npm
npm install -y --prefix ${HOME} selenium-webdriver
```


<!-- B -->]