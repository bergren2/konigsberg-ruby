var gulp = require("gulp");
var ghPages = require("gulp-gh-pages");

gulp.task("deploy", ["build"], function () {
  return gulp.src("./dist/**/*")
    .pipe(ghPages());
});

gulp.task("build", function () {
  // TODO
});
