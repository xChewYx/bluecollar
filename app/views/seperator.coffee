template = require('templates/seperator')

module.exports = class Seperator extends Backbone.View
  
  initialize: (options ={}) ->
    super options
    @el = options.el

  render: () ->
    @$el.append template {}
    return this