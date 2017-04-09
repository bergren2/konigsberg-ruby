var gulp = require("gulp");
var ghPages = require("gulp-gh-pages");
var eulerStats = require("./euler-stats.js");

var SRC_PATH = "./src/";
var DIST_PATH = "./dist/";

gulp.task("deploy", ["build"], function () {
  return gulp.src(DIST_PATH + "**/*")
    .pipe(ghPages());
});

gulp.task("build", function () {
  return gulp.src("./**/solutions/*")
    .pipe(eulerStats())
    .pipe(gulp.dest(DIST_PATH + "api/"));
});
