// Include gulp
var gulp = require ('gulp');

// Include Our Plugins
var jshint = require ('gulp-jshint');
var sass = require ('gulp-sass');
var concat = require ('gulp-concat');
var uglify = require ('gulp-uglify');
var rename = require ('gulp-rename');
var plumber = require ('gulp-plumber');
var browserSync = require ('browser-sync');
var sourcemaps = require ('gulp-sourcemaps');
var autoprefixer = require ('gulp-autoprefixer');
var sourcemaps = require ('gulp-sourcemaps');
var babel = require ('gulp-babel');
var ignore = require ('gulp-ignore');
var iconFont = require ('gulp-iconfont');
var iconFontCss = require ('gulp-iconfont-css');
var imagemin = require ('gulp-imagemin');

var paths = {
  imagesSrc: './wp-content/themes/garrettsanderson/images/**/*',
  wpImagesSrc: './wp-content/uploads/**/*',
  imagesDest: './wp-content/themes/garrettsanderson/images',
  wpImagesDest: './wp-content/uploads',
  js: './wp-content/themes/garrettsanderson/includes/js/*.js',
  jsMin: './wp-content/themes/garrettsanderson/includes/js/min',
  jsDist: './wp-content/themes/garrettsanderson/includes/js/dist',
  sass: './wp-content/themes/garrettsanderson/includes/scss/**/*.scss',
  css: './wp-content/themes/garrettsanderson/includes/css',
  iconDest: './wp-content/themes/garrettsanderson/includes/fonts/ui',
  iconSrc: './wp-content/themes/garrettsanderson/images/svg/*.svg',
  themePhpFiles: './wp-content/themes/garrettsanderson/**/*.php',
};

var ignoredPaths = [
  './wp-content/themes/garrettsanderson/assets/js/src/vendor/*.js',
];

var reload = browserSync.reload;

// Processes javascript files
gulp.task ('js', function () {
  return gulp
    .src (paths.js)
    .pipe (ignore (ignoredPaths))
    .pipe (sourcemaps.init ())
    .pipe (
      babel ({
        presets: ['env'],
      })
    )
    .pipe (uglify ())
    .pipe (concat ('app.js'))
    .pipe (gulp.dest (paths.jsMin))
    .pipe (browserSync.stream ());
});

// Optimize images
gulp.task ('imagemin', function () {
  gulp
    .src (paths.imagesSrc)
    .pipe (imagemin ())
    .pipe (gulp.dest (paths.imagesDest));
  gulp
    .src (paths.wpImagesSrc)
    .pipe (imagemin ())
    .pipe (gulp.dest (paths.wpImagesDest));
});

// Watch for javascript file changes
gulp.watch (paths.js, ['js']);

// Processes php files
gulp.task ('php', function () {
  return gulp.src (paths.themePhpFiles).pipe (browserSync.stream ());
});

// Watch for php file changes
gulp.watch (paths.themePhpFiles, ['php']);

// Watch for dynamic stylesheet changes
gulp.watch (paths.sass, ['styles']);

// Processes dynamic stylesheets
gulp.task ('styles', function () {
  return gulp
    .src (paths.sass)
    .pipe (sourcemaps.init ())
    .pipe (
      sass ({
        outputStyle: 'compressed',
      }).on ('error', sass.logError)
    )
    .pipe (
      autoprefixer ({
        browsers: ['last 2 versions'],
        cascade: false,
        grid: true,
      })
    )
    .pipe (sourcemaps.write ('./maps'))
    .pipe (gulp.dest (paths.css))
    .pipe (browserSync.stream ());
});

// Serve task, boots server and targets dev environment via proxy
gulp.task ('serve', ['js', 'php', 'styles'], function () {
  browserSync.init ({
    notify: true,
    port: 9000,
    proxy: {
      target: 'http://dev.garrettsanderson.com:8888/',
    },
  });
});

// icon fonts task converts svg assets into fonts
var fontName = 'garrettsanderson-ui';
gulp.task ('iconfonts', function () {
  gulp
    .src ([paths.iconSrc])
    .pipe (
      iconFontCss ({
        fontName: fontName,
        targetPath: 'icons.css',
        fontPath: './',
      })
    )
    .pipe (
      iconFont ({
        fontName: fontName,
        formats: ['ttf', 'eot', 'woff', 'woff2'],
        normalize: true,
        fontHeight: 1001,
      })
    )
    .pipe (gulp.dest (paths.iconDest));
});
