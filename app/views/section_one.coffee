template = require('templates/section_one')
MailSignUp = require 'views/mail_sign_up'

module.exports = class SectionOne extends Backbone.View
	
  initialize: (options ={}) ->
    super options
    @el = options.el
    @mailSignUp = new MailSignUp({el: @el})


  render: () ->
    @$el.append template {}
    @mailSignUp.render()
    return this