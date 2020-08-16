// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.


//= require("jquery")
//= require("jquery-ui/core")
//= require activestorage
//= require local-time
//= require tinymce
//= require social-share-button

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("trix")
require("@rails/actiontext")
require("bootstrap")

var jQuery = require("jquery");

// import jQuery from "jquery";
global.$ = global.jQuery = jQuery;
window.$ = window.jQuery = jQuery;

import "controllers"
import "@fortawesome/fontawesome-free/js/all";

// Back to top button
$(window).scroll(function() {
    if ($(this).scrollTop() > 100) {
      $('.back-to-top').fadeIn('slow');
    } else {
      $('.back-to-top').fadeOut('slow');
    }
  });
  $('.back-to-top').click(function(){
    $('html, body').animate({scrollTop : 0},1500, 'easeInOutExpo');
    return false;
  });

setTimeout(function() {
  $('.flash-message').fadeOut('fast');
}, 5000);




