exports.config =
  files:
    javascripts:
      joinTo:
        'js/app.js': /^app/
        'js/vendor.js': /^bower_components/
    stylesheets:
      joinTo: 
        'styles/app.css'
      order:
        after:['app/styles/rev-grid.styl','app/styles/base.styl','app/styles/first-demo.styl','app/styles/responsive.styl']
    templates:
      joinTo: 'js/templates.js'

  overrides:
    production:
        plugins:
            off: ['auto-reload-brunch']