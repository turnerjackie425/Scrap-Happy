$ ->
  $('#page_attachments').imagesLoaded ->
    $('#page_attachments').masonry
      itemSelector: '.index_container'
      isFitWidth: true