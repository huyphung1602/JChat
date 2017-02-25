//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require semantic

$(document).on('turbolinks:load', function(){
  $('.message .close')
  .on('click', function() {
    $(this)
    .closest('.message')
    .transition('fade')
    ;
  });
})