$ ->
  $('#page_attachments').imagesLoaded ->
    $('#page_attachments').masonry
      itemSelector: '.box'
      isFitWidth: true