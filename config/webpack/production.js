process.env.NODE_ENV = process.env.NODE_ENV || 'production'

const UglifyJsPlugin = require('uglifyjs-webpack-plugin')
const { environment } = require('@rails/webpacker')
// const environment = require('./environment')

// environment.plugins.delete('UglifyJs')

// environment.plugins.append(
//   'UglifyJs',
//   new UglifyJsPlugin({
//     sourceMap: true
//   })
// )

environment.config.set('optimization.minimizer', [new UglifyJsPlugin()])

module.exports = environment.toWebpackConfig()
