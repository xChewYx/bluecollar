template = require('templates/thank_you')

module.exports = class ThankYou extends Backbone.View
  
  initialize: (options ={}) ->
    super options
    @el = options.el

  render: () ->
    @$el.append template {}
    return this