const elixir = require( "coldbox-elixir" );

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

module.exports = elixir( mix => {

	// Mix App styles
	mix.sass( "App.scss" )
		.copy( "node_modules/bootstrap-sass/assets/fonts", "includes/fonts" )
		.js(
			[
				"node_modules/jquery/dist/jquery.min.js",
				"node_modules/bootstrap-sass/assets/javascripts/bootstrap.min.js"
			],
			{
				name : "vendor.min",
				entryDirectory : ""
			}
		);

} );