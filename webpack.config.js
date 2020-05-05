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
	mix
		.js( "App.js" )
		.sass( "App.scss" )
		.js(
			[
				"node_modules/jquery/dist/jquery.min.js",
				"node_modules/bootstrap/dist/js/bootstrap.min.js",
				"node_modules/@fortawesome/fontawesome-free/js/fontawesome",
				"node_modules/@fortawesome/fontawesome-free/js/solid",
				"node_modules/@fortawesome/fontawesome-free/js/regular",
				"node_modules/@fortawesome/fontawesome-free/js/brands"
			],
			{
				name : "vendor.min",
				entryDirectory : ""
			}
		);

} );