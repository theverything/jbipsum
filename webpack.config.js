var path = require('path');
var webpack = require('webpack');
var env = process.argv[2];
var loaders = [];
var plugins = [];
var entry = [];
var externals = {};
var devtool;

if (!env) {
  loaders = loaders.concat([
    'react-hot'
  ]);
  plugins = plugins.concat([
    new webpack.HotModuleReplacementPlugin(),
    new webpack.NoErrorsPlugin()
  ]);
  entry = entry.concat([
    'webpack-dev-server/client?http://localhost:3000',
    'webpack/hot/only-dev-server'
  ]);
  devtool = 'eval';
}

if (env && env === '--prod') {
  plugins = plugins.concat([
    new webpack.optimize.UglifyJsPlugin()
  ]);
  externals = {
    'react': 'React'
  };
}

var config = {
  devtool: devtool,
  entry: entry.concat(['./src/index']),
  output: {
    path: path.join(__dirname, 'dist'),
    filename: 'bundle.js',
    publicPath: '/static/'
  },
  plugins: plugins,
  resolve: {
    extensions: ['', '.js', '.jsx']
  },
  module: {
    loaders: [{
      test: /\.jsx?$/,
      loaders: loaders.concat(['babel']),
      include: path.join(__dirname, 'src')
    }]
  },
  externals: externals
};

module.exports = config;
