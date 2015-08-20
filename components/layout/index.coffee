$ = require 'jquery'

$ ->
#   alert 'hi'
  $sectionOne = $('#body-first-section')
  $sectionTwo = $('#body-second-section')
  $sectionThree = $('#body-third-section')
  $sectionFourth = $('#body-fourth-section')
  $sectionFifth = $('#body-fifth-section')

  $sectionOne.click (e) ->
    e.preventDefault()
    # console.log($sectionOne)
    $('.body-section-one-content').slideDown('slow')
    $('.body-section-two-content').css('display', 'none')
    $('.body-section-three-content').css('display', 'none')
    $('.body-section-four-content').css('display', 'none')
    $('.body-section-five-content').css('display', 'none')

  $sectionTwo.click (e) ->
    e.preventDefault()
    # console.log($sectionOne)
    $('.body-section-two-content').slideDown('slow')
    $('.body-section-one-content').css('display', 'none')
    $('.body-section-three-content').css('display', 'none')
    $('.body-section-four-content').css('display', 'none')
    $('.body-section-five-content').css('display', 'none')

  $sectionThree.click (e) ->
    e.preventDefault()
    # console.log($sectionOne)
    $('.body-section-three-content').slideDown('slow')
    $('.body-section-two-content').css('display', 'none')
    $('.body-section-one-content').css('display', 'none')
    $('.body-section-four-content').css('display', 'none')
    $('.body-section-five-content').css('display', 'none')

  $sectionFourth.click (e) ->
    e.preventDefault()
    # console.log($sectionOne)
    $('.body-section-four-content').slideDown('slow')
    $('.body-section-two-content').css('display', 'none')
    $('.body-section-three-content').css('display', 'none')
    $('.body-section-one-content').css('display', 'none')
    $('.body-section-five-content').css('display', 'none')

  $sectionFifth.click (e) ->
    e.preventDefault()
    # console.log($sectionOne)
    $('.body-section-five-content').slideDown('slow')
    $('.body-section-two-content').css('display', 'none')
    $('.body-section-three-content').css('display', 'none')
    $('.body-section-one-content').css('display', 'none')
    $('.body-section-four-content').css('display', 'none')