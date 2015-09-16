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
var f7 = new Framework7();
var UPDATE_INTERVAL = 1000 * 1;

// Ask for user loc
navigator.geolocation.getCurrentPosition(function (geoloc) {
  if (!geoloc) return;
  var req_url = "/by_loc?lat=" + geoloc.coords.latitude + "&lon=" + geoloc.coords.longitude;
  $.get(req_url, function(data) { $("#eateries").html(data.html); });
});


// Timeline updates
(function update_timeline() {
  var seconds_since_midnight = $("#time-keeper").data("seconds");

  $(".open-block").each(function(i, elem) {
    $(elem).css("left", $(elem).data("start-x") - (100 * seconds_since_midnight) / (60 * 60) + $("#now").offset().left);
  });

  // Update every minute
  $("#time-keeper").data("seconds", seconds_since_midnight + (UPDATE_INTERVAL / 1000));
  setTimeout(update_timeline, UPDATE_INTERVAL);
})();

// Open now toggles
$("#open-now-toggle").on("click", function() {
  $("#eateries").toggleClass("open-only");
  $("#open-now-toggle input").prop("checked", $("#eateries").hasClass("open-only"));
});


// Search bar toggle
$("#search-button").on("click", function() {
  $(".navbar .navbar-inner > div").toggleClass("hide");
  $("#searchbox").focus();
});

$("#searchbox").blur(function() { $(".navbar .navbar-inner > div").toggleClass("hide"); })
