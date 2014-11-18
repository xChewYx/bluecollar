# navbar = require 'views/navbar'
# user = require 'models/user'
MainPage = require 'views/main_page'

module.exports = class Router extends Backbone.Router

  initialize: () ->


    # @navbar = new navbar
    #   el: $('.root-view')
    #   model: new user
    #   router: @

  routes:
    ''            : 'renderMain'
    # 'menu_1'      : 'menu_1'
    # 'menu_2'      : 'menu_2'
    # 'menu_3'      : 'menu_3'

  renderMain: () ->
    mainPage = new MainPage()
    mainPage.render()

