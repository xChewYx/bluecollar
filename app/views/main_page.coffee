Banner = require 'views/banner'

module.exports = class MainPage extends Backbone.View

  initialize: (options = {}) ->
    super options
    @$el = $('.root-view')
    @banner = new Banner()

  render: () ->
    appenderSon = @banner.render()
    @$el.append(appenderSon)
