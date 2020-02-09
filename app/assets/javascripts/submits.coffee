$(document).ready ->
  $('.timer_form').submit ->
    x = $('#timer').val()
    sec = Number(x.slice(6, 8))
    min = Number(x.slice(3, 5))
    hour = Number(x.slice(0, 2))
    
    min = min * 60
    hour = hour * 60 * 60
    goukei = hour + min + sec
    
    $('#timer').val(goukei)