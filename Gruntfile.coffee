module.exports = (grunt) ->

  require('load-grunt-tasks')(grunt)

  # Project configuration
  grunt.initConfig
    pkg: grunt.file.readJSON 'package.json'

    ###### Images ######

    imagemin:
      img:
        files: [
          { expand: true, cwd: 'src', src: ['**/*.{png,jpeg,jpg,gif}'], dest: 'dist' }
        ]

    clean: ['dist/*']

  ################################
  # Tasks
  ################################
  
  grunt.registerTask 'default', ['imagemin']
