var elixir = require( 'coldbox-elixir' );

/*
 |--------------------------------------------------------------------------
 | Elixir Asset Management
 |--------------------------------------------------------------------------
 |
 | Elixir provides a clean, fluent API for defining some basic Gulp tasks
 | for your ColdBox application. By default, we are compiling the Sass
 | file for our application, as well as publishing vendor resources.
 |
 */

elixir( function( mix ){
	// Mix App styles
	mix.sass( "App.scss" )
		// Copy fonts
		.copy( "node_modules/bootstrap-sass/assets/fonts", "includes/fonts" )
		// Combine bootstrap + jquery -> vendor.min.js
		.scripts( 
			[ 
				"jquery/dist/jquery.min.js", 
				"bootstrap-sass/assets/javascripts/bootstrap.min.js"
			], // concatenated + minified files
			"includes/js/vendor.min.js", // ouput file
			"node_modules" // base dir
		);

} );
