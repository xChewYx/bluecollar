template = require('templates/footer')

module.exports = class Footer extends Backbone.View
  
  initialize: (options ={}) ->
    super options
    @el = options.el

  render: () ->
    @$el.append template {}
    @facebook()
    @twitter()
    @googlePlus()
    return this

  facebook:() ->
    fjs = document.getElementsByTagName('script')[0]
    # if (document.getElementById('facebook-jssdk')) 
    #   return
    # js = document.createElement('script')
    # js.id = 'facebook-jssdk'
    # js.src = "//connect.facebook.net/en_EN/all.js#xfbml=1&appId=183501305061516"
    # fjs.parentNode.insertBefore(js, fjs)

  twitter: () ->
    fjs=document.getElementsByTagName('script')[0]
    # p= if /^http:/.test(document.location) then 'http' else'https'
    # if(!document.getElementById('twitter-wjs'))
    #   js=document.createElement('script')
    #   js.id='twitter-wjs'
    #   js.src=p+'://platform.twitter.com/widgets.js'
    #   fjs.parentNode.insertBefore(js,fjs)

  googlePlus: () ->
    po = document.createElement('script'); 
    # po.type = 'text/javascript'; 
    # po.async = true;
    # po.src = 'https://apis.google.com/js/platform.js';
    # s = document.getElementsByTagName('script')[0]; 
    # s.parentNode.insertBefore(po, s);
