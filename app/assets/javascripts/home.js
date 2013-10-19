$(document).ready(function () {
  var $container = $('#js-masonry');

   $container.masonry({
     itemSelector: '.js-offers',
     gutter: 40
   });

});