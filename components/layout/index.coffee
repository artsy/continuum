$ = require 'jquery'
{ initSlideShow } = require '../carousel/index.coffee'

$ ->

  # target clicked, callback -> close all sections then slideDown clicked element
  $('.js-display-content').click (e) ->
    e.preventDefault()
    $('.js-section-content').css('display', 'none')
    $(this).siblings('.js-section-content').slideDown('slow')

  initSlideShow()