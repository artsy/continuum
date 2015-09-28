$ = require 'jquery'

module.exports =

  initExpandContent: ->
    $('body').on 'click touchstart', '.body-content-container section', (e) ->
      e.preventDefault()
      $(e.currentTarget).toggleClass 'is-active'