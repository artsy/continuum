$ = require 'jquery'

$ ->

  # target clicked, callback -> close all sections then slideDown clicked element
  $('.js-display-content').click (e) ->
    e.preventDefault()
    $('.js-section-content').css('display', 'none')
    $(this).siblings('.js-section-content').slideDown('slow')

  slideSwitch = ->
    $active = $('figure.carousel-track__image  .slideshow-is-active')

    $next = if $active.next().length then $active.next() else $('figure.carousel-track__image img:first')

    $next.addClass('slideshow-is-active')
    $active.removeClass('slideshow-is-active')

  setInterval( slideSwitch, 2000)