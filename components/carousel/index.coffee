$ = require 'jquery'

module.exports =
  initSlideShow: ->

    slideSwitch = ->
      $active = $('.carousel-track__image  .slideshow-is-active')
      $next = if $active.next().length then $active.next() else $('.carousel-track__image .slide-images:first')

      $next.addClass('slideshow-is-active')
      $active.removeClass('slideshow-is-active')

    setInterval slideSwitch, 2000