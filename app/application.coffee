Router = require 'router'

$(document).on 'click', 'a:not([data-bypass])', (evt) ->
  href =
    prop: $(@).prop('href')
    attr: $(@).attr('href')

  root = "#{location.protocol}//#{location.host}"

  if href.prop and href.prop.slice(0, root.length) is root
    evt.preventDefault()
    Backbone.history.navigate href.attr, true

$ () ->
  router = new Router()  
  Backbone.history.start pushState: true