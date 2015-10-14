---
.left-column[
  ### Add Bunyan Logging
  <br />
  <br />
  <div class="manual_input_reqd">
  <img src="./fragments/typer.gif" />
  Manual input required here.
  </div>
  <br />
.footnote[.red.bold[] [Table of Contents](./)] 
<!-- H -->]
.right-column[
~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ - o 0 o - ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~

#### Now we can add logging

Edit ```'${PKG_NAME}-tests.js'``` again adding ```const Logger = Bunyan.createLogger({ 'name': 'ci4meteor' });``` and ```Logger.info('ººº Yoo Hoo ººº');``` as shown.

```javascript
const Bunyan = Npm.require('bunyan');
const Logger = Bunyan.createLogger({ 'name': 'ci4meteor' });  //  ADD! <--

Tinytest.add('Check Equality', function sanityCheckEQ(test) {
    Logger.info('ººº Yoo Hoo ººº');                           //  ADD! <--
    console.log('ººº Yoo Hoo ººº');
    test.equal(true, true);
});
```

   ... save, and observe the command line logs and the (empty!) browser console.

<!-- B -->]