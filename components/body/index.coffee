$ = require 'jquery'

module.exports =

  initExpandContent: ->
    $('body').on 'tap', '.body-content-container section', (e) ->
      e.preventDefault()
      $(e.currentTarget).toggleClass 'is-active'