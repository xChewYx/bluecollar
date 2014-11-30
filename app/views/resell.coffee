template = require('templates/resell')

module.exports = class Resell extends Backbone.View
  
  initialize: (options ={}) ->
    super options
    @el = options.el

  render: () ->
    @$el.append template {}
    return this

  events:
    "click a.cta" : "clickAndScroll"

  clickAndScroll: (e) ->  
    e.preventDefault();
    elm = $(e.currentTarget)[0]

    target = elm.hash

    $('html, body').stop().animate({
       'scrollTop': $(target).offset().top
    }, 500, 'easeInOutQuad')
