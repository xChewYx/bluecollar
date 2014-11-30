template = require('templates/testimonial')

module.exports = class Testimonial extends Backbone.View
  
  initialize: (options ={}) ->
    super options
    @el = options.el

    @testimonial = options.testimonial
    @name = options.name
    @title = options.title

  render: () ->
    @$el.append template {
      testimonial: @testimonial
      name: @name
      title: @title
    }
    return this