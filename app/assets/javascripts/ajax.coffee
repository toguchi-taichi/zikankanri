$ ->
  $('#button').on 'click', ->
    $.ajax
      type: 'GET'
      url: '/timers/new'
      datatype: 'html'
      
    .done (data) ->
      html_outer = $($.parseHTML(data)).filter('#tmer')
      $('.manual_timer_form').html(html_outer)
      
      
  
  $('#button2').on 'click', ->
    $.ajax
      type: 'GET'
      url: '/timers/index'
      datatype: 'html'
      
    .done (data) ->
      outer_html = $($.parseHTML(data)).filter('.manual_timer_form')
      $('.timer_form').html(outer_html)
      
  

$(document).on 'turbolinks:load', ->
  $('#button').on 'click', ->
    $.ajax
      type: 'GET'
      url: '/timers/new'
      datatype: 'html'
      
    .done (data) ->
      html_outer = $($.parseHTML(data)).filter('#tmer')
      $('.manual_timer_form').html(html_outer)
      
      
  
  $('#button2').on 'click', ->
    $.ajax
      type: 'GET'
      url: '/timers/index'
      datatype: 'html'
      
    .done (data) ->
      outer_html = $($.parseHTML(data)).filter('.manual_timer_form')
      $('.timer_form').html(outer_html)