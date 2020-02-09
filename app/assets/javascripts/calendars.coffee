
$(document).ready ->
    $('#calendar').fullCalendar {
        dayClick: (date, jsEvent, view) ->
          window.location.href = 'https://6fb261d282fe406aafb243a6d3815dea.vfs.cloud9.us-east-2.amazonaws.com/timers/new?_c9_id=livepreview0&_c9_host=https://us-east-2.console.aws.amazon.com'
          alert '日付選択後にタイマーで勉強時間を計測しよう'
          }



$(document).on 'turbolinks:load', ->
    $('#calendar').fullCalendar {
        dayClick: (date, jsEvent, view) ->
            window.location.href = 'https://6fb261d282fe406aafb243a6d3815dea.vfs.cloud9.us-east-2.amazonaws.com/timers/new?_c9_id=livepreview0&_c9_host=https://us-east-2.console.aws.amazon.com'
            alert '日付選択後にタイマーで勉強時間を計測しよう'
            }
        
        
$(document).on 'turbolinks:before-cache', ->
    $('#calendar').empty()