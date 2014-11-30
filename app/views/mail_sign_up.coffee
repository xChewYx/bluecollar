template = require('templates/mail_sign_up')

module.exports = class MailSignUp extends Backbone.View
  
  initialize: (options ={}) ->
    super options
    @el = options.el

  render: () ->
    @$el.append template {}
    return this

#
# Events
#
  events:
    'submit form.main-form' : 'onFormSubmit'

  onFormSubmit: (e) =>
    $form = $(e.target)
    requiredFields = $form.find('.required')
    formData = $form.serialize()
    formAction = $form.attr('action')

    requiredFields.each((elm) =>
        $elm = $(elm)
        if( $elm.val() == "" )
            $elm.addClass('input-error')
        else 
            $elm.removeClass('input-error')
      )

    emailField = $('.form-email')
    if( !@validateEmail(emailField.val()) )
      emailField.addClass("input-error")
    else
      emailField.removeClass('input-error')

    if ($form.find('input').hasClass("input-error")) 
      return false;
    else 
      debugger
      $.ajax({
        type: "POST"
        url: formAction
        data: formData
        success: (data) =>
          requiredFields.val("")

          if(data == "success")
            $.magnificPopup.open({
                items: 
                  src: $('#thanks-popup')
                  type: 'inline'
              }); 
          else
            alert(data)   
        }
        # formAction, formData, (data) =>
        #   requiredFields.val("")

        #   if(data == "success")
        #     $.magnificPopup.open({
        #         items: 
        #           src: $('#thanks-popup')
        #           type: 'inline'
        #       }); 
        #   else
        #     alert(data)   
      )

    return false;




  validateEmail: (emailStr) ->
    regExp = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
    return regExp.test(emailStr)