
  $(document).ready ->
    sec = 0
    min = 0
    hour = 0
    timer = undefined
    
    countup = ->
      sec++
      
      if sec > 59
        sec = 0
        min++
      
      if min > 59
        min = 0
        hour++
      
      sec_number = ('0' + sec).slice(-2)
      min_number = ('0' + min).slice(-2)
      hour_number = ('0' + hour).slice(-2)
      $('#timer').val(hour_number + ':' + min_number + ':' + sec_number) 
    
    
    $('.start').on 'click', ->
    
      sec = 0
      min = 0
      hour = 0
      $('#timer').val('00:00:00')
      timer = setInterval(countup, 1000)
      $(this).prop 'disabled', true
      $('.stop,.reset').prop 'disabled', false
    
    
    $('.stop').on 'click', ->
      
      clearInterval timer
      $(this).prop 'disabled', true
      $('.restart').prop 'disabled', false
    
    
    $('.restart').on 'click', ->
      
      timer = setInterval(countup, 1000)
      $(this).prop 'disabled', true
      $('.stop').prop 'disabled', false
    
    
    $('.reset').on 'click', ->
      
      sec = 0
      min = 0
      hour = 0
      $('#timer').val('00:00:00')
      clearInterval timer
      $('.stop,.restart,.reset').prop 'disabled', true
      $('.start').prop 'disabled', false
    
    
    $('.kanryou').click ->
      $('.timer_form').attr('action', 'https://6fb261d282fe406aafb243a6d3815dea.vfs.cloud9.us-east-2.amazonaws.com/calendars')
      $('.timer_form').submit()
        
    $('.kousin').click ->
      $('.timer_form').attr {
        action: 'https://6fb261d282fe406aafb243a6d3815dea.vfs.cloud9.us-east-2.amazonaws.com/calendars/index'
        method: 'patch'
      }
      
    
      
      
    

  
  