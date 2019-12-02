
  $(document).ready ->
    $('#timers').TimeCircles {
      
        circle_bg_color: '#00F'
        total_duration:  "Auto"
        direction: "Clockwise"
        bg_width: 0.5
        fg_width: 0.0333
        time:
          Days: color: '#0F0'
          Hour: color: '#FFF'
          Minutes: color: '#0FF'
          Seconds: color: '#FF0'
        
        }
        
        

  $(document).ready ->
    $('.start').click ->
      $('#timers').TimeCircles().start()
    $('.stop').click ->
      $('#timers').TimeCircles().stop()
    $('.restart').click ->
      $('#timers').TimeCircles().restart()
    $('.reset').click ->
      $('#timers').TimeCircles().rebuild()
      
      
  
  