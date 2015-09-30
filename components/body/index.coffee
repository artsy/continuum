$ = require 'jquery'

module.exports =

  initExpandContent: ->
    $('body').on 'tap', '.js-display-content', (e) ->
      e.preventDefault()

      if $(e.currentTarget).hasClass('is-active')
        $(e.currentTarget).removeClass('is-active')
        $(e.currentTarget).siblings('.js-section-content').slideUp('slow')
      else
        $('.js-section-content').css('display', 'none')
        $('.body-section > a').removeClass('is-active')

        $(e.currentTarget).addClass('is-active')
        $(e.currentTarget).siblings('.js-section-content').slideDown('slow')