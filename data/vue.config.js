// vue.config.js
module.exports = {
  css: {
    loaderOptions: {
      // pass options to sass-loader
      // @/ is an alias to src/
      // so this assumes you have a file named `src/variables.sass`
      // Note: this option is named as "data" in sass-loader v7
      scss: {
        prependData: `
          @import "./node_modules/bulma/sass/utilities/_all.sass";
          @import "~@/globals/buefy/_custom.scss";
          @import "./node_modules/bulma/bulma.sass";
          @import "./node_modules/buefy/src/scss/buefy.scss";
        `
      },
      // by default the `sass` option will apply to both syntaxes
      // because `scss` syntax is also processed by sass-loader underlyingly
      // but when configuring the `data` option
      // `scss` syntax requires an semicolon at the end of a statement, while `sass` syntax requires none
      // in that case, we can target the `scss` syntax separately using the `scss` option
    }
  }
};
