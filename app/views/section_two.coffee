template = require('templates/section_two')
Testimonial = require 'views/testimonial'
Resell = require 'views/resell'

module.exports = class SectionOne extends Backbone.View
  
  initialize: (options ={}) ->
    super options
    @el = options.el

    @testimonial = new Testimonial({
      el: @el
      testimonial: "We manufacture our products with the utmost care and dedication, we check carefully the process from the raw materials to your home."
      name: "Mark Wright"
      title: "Founder & CEO" 
      image:"http://placehold.it/100x100"
    })
    @resell = new Resell({el: @el})

  render: () ->
    @$el.append template {}
    @testimonial.render()
    @resell.render()
    return this