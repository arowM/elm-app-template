require('../style/reset.scss');
require('../style/app.scss');

const { Elm } = require('../Main.elm');

const app = Elm.Main.init({
  node: document.body,
  flags: null
});

