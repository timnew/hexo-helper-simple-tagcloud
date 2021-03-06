require('coffee-script/register')

gulp = require('gulp')
del = require('del')
bump = require('gulp-bump')

argv = require('yargs')
  .alias('b', 'bump')
  .default('bump', 'patch')
  .describe('bump', 'bump [major|minor|patch|prerelease] version')
  .argv

paths =
  source:
    manifest: ['package.json']
    js: ['lib_src/*.js']
  dest:
    root: '.'
    lib: 'lib'

gulp.task 'clean', ->
  del.sync(paths.dest.lib)

gulp.task 'js', ->
  gulp.src paths.source.js
    .pipe gulp.dest paths.dest.lib

gulp.task 'build', ['clean', 'js']

gulp.task 'default', ['build']

gulp.task 'bump', ['build'], ->
  gulp.src paths.source.manifest
    .pipe bump { type: argv.bump }
    .pipe gulp.dest(paths.dest.root)

gulp.task 'watch', ['build'], ->
  gulp.watch paths.source.js, ['js']
