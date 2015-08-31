$ = require 'jquery'

module.exports =

  initExpandContent: ->
    $('.js-display-content').click (e) ->
      e.preventDefault()
      $('.js-section-content').css('display', 'none')
      $(this).siblings('.js-section-content').slideDown('slow')