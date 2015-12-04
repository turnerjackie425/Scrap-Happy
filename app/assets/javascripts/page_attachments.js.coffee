$ ->
  $('#masonry_container').imagesLoaded ->
    $('#masonry_container').masonry
      itemSelector: '.box'
      isFitWidth: true