// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require framework7
//= require_tree .

navigator.geolocation.getCurrentPosition(order_by_geoloc);

function order_by_geoloc(geoloc) {
  if (!geoloc) return;


}

var f7 = new Framework7();

$("#open-checkbox").change(function() {
  $("#eateries").toggleClass("open-only");
});
