# navbar = require 'views/navbar'
# user = require 'models/user'
MainPage = require 'views/main_page'

module.exports = class Router extends Backbone.Router

  routes:
    ''            : 'renderMain'

  renderMain: () ->
    mainPage = new MainPage()
    mainPage.render()

