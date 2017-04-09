var through = require("through2");
var gutil = require("gulp-util");
var PluginError = gutil.PluginError;

var PLUGIN_NAME = "euler-stats";

module.exports = function () {
  return through.obj(function (file, encoding, callback) {
    if (file.isNull()) {
      return callback(null, file);
    }

    if (file.isStream()) {
      this.emit("error", new PluginError(PLUGIN_NAME, "Streams not supported!"));
    } else if (file.isBuffer()) {
      var language = file.path.match(/(\w+)\/solutions\//)[1];
      var eulerID = file.path.match(/solutions\/(\d+)\..+$/)[1];
      var json = {"hello": "world"};

      file.path = "/languages/" + language + "/solutions/" + eulerID + ".json";
      file.contents = new Buffer(JSON.stringify(json));
      return callback(null, file);
    }
  });
};
