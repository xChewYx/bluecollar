Loader = require 'views/loader'
SectionOne = require 'views/section_one'
Seperator = require 'views/seperator'
SectionTwo = require 'views/section_two'
Footer = require 'views/footer'

module.exports = class MainPage extends Backbone.View

  initialize: (options = {}) ->
    super options
    
    @$el = $('.root-view')
    @el = @$el[0]

    @loader = new Loader({el: @el})
    @sectionOne = new SectionOne({el: @el})
    @seperator = new Seperator({el: @el})
    @sectionTwo = new SectionTwo({el: @el})
    @footer = new Footer({el: @el})
    
  render: () ->

    @loader.render()
    @sectionOne.render()    
    @seperator.render()
    @sectionTwo.render()
    @footer.render()

    @hideLoader()
    @autoPosition()

    $(window).resize(() =>
      @autoPosition()
    )
  
  hideLoader: () ->
    shouldHide = $("body").hasClass('no-preloader') ? false : true
    if shouldHide
      @loader.hideLoader()

  #
  # To make this function work, add a span.auto-position to the <body>
  #
  autoPosition: () ->
    if( $('body').find('.auto-position').length > 0  )

      formColumn = $('.form-column')
      textColumn = $('.text-column')

      if ($('.submit-arrow').css("display") == "none" ) 
        formColumn.css({marginTop: '-80px', marginBottom: '80px'})
        textColumn.css({paddingBottom: '125px'})
      else
        formColumn.css({marginTop: 0})
        textColumn.css({paddingBottom: 0})

        formSubmitButton = $('.form-submit')
        buttonToFormY = formSubmitButton.offset().top - $('.main-form').offset().top
        textColumnY = textColumn.offset().top
        buttonH = formSubmitButton.outerHeight()
        marginTop = buttonToFormY + (buttonH / 2)

        formColumn.css({marginTop: -marginTop})

        formColumnY = formColumn.offset().top
        columnsDiff = textColumnY - formColumnY

        if(columnsDiff >= 0)
          textColumn.css({paddingBottom: columnsDiff})
        else 
          textColumn.css({paddingBottom: '60px'})






