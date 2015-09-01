$ = require 'jquery'
headerTemplate = -> require('../header/index.jade') arguments...
headerData = require('../header/data.coffee')
footerTemplate = -> require('../footer/index.jade') arguments...
footerData = require('../footer/data.coffee')
{ initSlideShow } = require '../carousel/index.coffee'
{ initExpandContent } = require '../body/index.coffee'
DEFAULT_LANGUAGE = 'traditional'

$ ->
  console.log headerData
  render = (language) ->
    $('header').html headerTemplate
      copy: headerData
      language: language

    $('footer').html footerTemplate
      copy: footerData
      language: language

  render(DEFAULT_LANGUAGE)

  initSlideShow()
  initExpandContent()
