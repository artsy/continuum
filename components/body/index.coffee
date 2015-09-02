$ = require 'jquery'

module.exports =

  initExpandContent: ->
    $('body').on 'click', '.js-display-content', (e) ->
      e.preventDefault()
      $('.js-section-content').css('display', 'none')
      $(this).siblings('.js-section-content').slideDown('slow')