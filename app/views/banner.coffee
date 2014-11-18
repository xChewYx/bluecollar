template = require('templates/banner')

module.exports = class Banner extends Backbone.View
	
  initialize: (options ={}) ->
    super options

  render: () ->
    @$el.html template {}
    return @el