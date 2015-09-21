$ = require 'jquery'
headerTemplate = -> require('../header/index.jade') arguments...
headerData = require('../header/data.coffee')
bodyTemplate = -> require('../body/index.jade') arguments...
bodyData = require('../body/data.coffee')
footerTemplate = -> require('../footer/index.jade') arguments...
footerData = require('../footer/data.coffee')
{ initSlideShow } = require '../carousel/index.coffee'
{ initExpandContent } = require '../body/index.coffee'
DEFAULT_LANGUAGE = 'traditional'

$ ->

  render = (language) ->
    $('header').html headerTemplate
      copy: headerData
      language: language

    $('.body-content-container.main-side-margin').html bodyTemplate
      copy: bodyData
      language: language

    $('footer').html footerTemplate
      copy: footerData
      language: language


  render(DEFAULT_LANGUAGE)

  toggleLanguageOnClick = (e) ->
    e.preventDefault()

    language = $(e.currentTarget).data('language')
    render language

    $('.nav-items a.is-active').removeClass('is-active')
    $(".nav-items a[data-language='#{language}'").addClass('is-active')

  $('body').on 'click', '.js-language-toggle', toggleLanguageOnClick

  $('body').on 'click', '.header-section-nav a', (e)->
    section = $(e.currentTarget).data 'section'
    $('html,body').animate { scrollTop: $("##{section}").offset().top - 140 }, 1000

  rotateHeaderBanner = ->
    $active = $('.header.active-banner')
    $next = if $active.next('.header').length then $active.next() else $('.header:first')

    $next.addClass('active-banner')
    $active.removeClass('active-banner')


  setInterval rotateHeaderBanner, 3000
  initSlideShow()
  initExpandContent()
