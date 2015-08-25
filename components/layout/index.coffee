$ = require 'jquery'
{ initSlideShow } = require '../carousel/index.coffee'
{ initExpandContent } = require '../body/index.coffee'

$ ->
  initExpandContent()
  initSlideShow()