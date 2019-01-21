const elixir = require("coldbox-elixir");
const webpack = require("webpack");

elixir.config.mergeConfig({
    plugins: [
        new webpack.ProvidePlugin({
            jQuery: "jquery",
            $: "jquery",
            jquery: "jquery"
        })
    ]
});

module.exports = elixir(mix => {
    mix.sass("App.scss");
    mix.copy("node_modules/bootstrap-sass/assets/fonts", "includes/fonts");
    mix.js("app.js");
});
