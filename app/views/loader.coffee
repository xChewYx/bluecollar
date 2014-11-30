template = require('templates/loader')

module.exports = class Loader extends Backbone.View

  MinimumTime = 500
  PreloaderDelay = 500
  PreloaderFadeOutTime = 800
  
  initialize: (options ={}) ->
    super options
    @el = options.el

  render: () ->
    @$el.append template {}
    return this

  hideLoader: () ->
    if @$el.find('.preloader').length > 0
      preloader = @$el.find('.preloader')
      loadingAnimation = $(preloader).find('.preloader-logo')
         
      setTimeout(() ->
        loadingAnimation.delay().fadeOut()
        preloader.delay(Loader.PreloaderDelay).fadeOut(Loader.PreloaderFadeOutTime)
      , Loader.MinimumTime)

    else
      throw new Error("Can call function hideLoader before loader view is rendered"
      )