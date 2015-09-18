$ = require 'jquery'

module.exports =

  initExpandContent: ->
    $('body').on 'touchstart', '.js-display-content', (e) ->
      e.preventDefault()
      $('.js-section-content').css('display', 'none')
      $('section > a').removeClass('is-active')

      $(this).addClass('is-active')
      $(this).siblings('.js-section-content').slideDown('slow')