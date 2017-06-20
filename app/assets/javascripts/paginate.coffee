$ ->
  if $('#infinite-scrolling').size() > 0
    $(window).scroll ->
      url = $('.pagination .next_page').attr('href')
      if url && $(window).scrollTop() > $(document).height() - $(window).height() - 50
        window.pagination_loading = true

        $('.pagination').text('loading')
        $.getScript(url)
