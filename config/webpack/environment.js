const { environment } = require('@rails/webpacker')

const webpack = require("webpack");

// Add an additional plugin of your choosing : ProvidePlugin
environment.plugins.append(
  "Provide",
  new webpack.ProvidePlugin({
    $: "jquery",
    jQuery: "jquery",
    jquery: "jquery",
    "window.Tether": "tether",
    Popper: ["popper.js", "default"] // for Bootstrap 4
  })
);

module.exports = environment

// {
//   externals: {
//     // require("jquery") is external and available
//     //  on the global var jQuery
//     "jquery": "jQuery"
//   }
// }