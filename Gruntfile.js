module.exports = function(grunt) {

	grunt.initConfig({

		coffee : {
			compile : {
				files  : {
					'dist/hoverSlippery.js' : 'src/coffee/hoverSlippery.coffee'
				}
			}
		},
		jade : {
			compile : {
				options : {
					pretty : true
				},
				files : {
					'example/index.html' : 'src/jade/index.jade'
				}
			}
		},
		sass : {
			dist : {
				opstions : {
					style: 'expanded'
				},
				files : {
					'example/css/style.css' : 'src/sass/main.scss'
				}
			}
		},
		watch : {
			scripts : {
				files : ['src/coffee/*.coffee'],
				tasks: ['coffee']
			},
			templates : {
				files : ['src/jade/*.jade'],
				tasks : ['jade']
			},
			styles : {
				files : ['src/sass/*.scss'],
				tasks : ['sass']
			}
		}

	});

	grunt.loadNpmTasks('grunt-contrib-sass');
	grunt.loadNpmTasks('grunt-contrib-jade');
	grunt.loadNpmTasks('grunt-contrib-coffee');
	grunt.loadNpmTasks('grunt-contrib-watch');

};