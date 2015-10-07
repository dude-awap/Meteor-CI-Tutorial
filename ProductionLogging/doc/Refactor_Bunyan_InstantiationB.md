---
.left-column[
  ### Refactor Bunyan (B)
.footnote[.red.bold[] [Table of Contents](./)] 
<!-- H -->]
.right-column[
~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ - o 0 o - ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~

#### Refactor Bunyan Instantiation (Part B)

... continuing ... we still need to 'wire' ```Logger``` into our package.

In ```package.js``` change this ...
```javascript
api.use('${GITHUB_ORGANIZATION_NAME}:${PKG_NAME}');
api.addFiles(['${PKG_NAME}-tests.js'], ['server']);
```
... to look like this ...
```javascript
api.use('${GITHUB_ORGANIZATION_NAME}:${PKG_NAME}');
api.addFiles(                   //  EDIT! <--
  ['logger.js', '${PKG_NAME}-tests.js'], ['server']
);
api.export('Logger'); // Order matters.  Export **after** adding
```
In a new terminal run, and watch this command when ...
```terminal
tail -f /var/log/meteor/ci4meteor.log  | bunyan
```
... the tests in ```http://localhost:3000/``` rerun.

<!-- B -->]