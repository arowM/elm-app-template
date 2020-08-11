const path = require("path");

module.exports =
  {
    "modules": true,
    "plugins": {
      "autoprefixer": {},
      "postcss-flexbugs-fixes": {},
      "postcss-modules": {
        "generateScopedName": function(name, filename, css) {
          return path.dirname(
            path.relative(path.join(__dirname,'src','style'), filename))
            .split(path.sep).filter((p) => !p.startsWith('.'))
            .concat(path.basename(filename, path.extname(filename)))
            .join("_-") + "__" + name;
        },
        "getJSON": () => null
      }
    }
  }
