$(document).ready(function () {

  $("#js-start").on("click", function () {
    SC.stream("/tracks/95223130", function (sound) {
      sound.play();
      $(".js-featured-miley").addClass('twerking');
    });
  });
});