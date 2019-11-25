
$(document).ready ->
    $('#calendar').fullCalendar {
        dayClick: ->
            window.location.href = 'https://6fb261d282fe406aafb243a6d3815dea.vfs.cloud9.us-east-2.amazonaws.com/timers/show?_c9_id=livepreview0&_c9_host=https://us-east-2.console.aws.amazon.com'
            }





$(document).on 'turbolinks:load', ->
    $('#calendar').fullCalendar {
        dayClick: ->
            window.location.href = 'https://6fb261d282fe406aafb243a6d3815dea.vfs.cloud9.us-east-2.amazonaws.com/timers/show?_c9_id=livepreview0&_c9_host=https://us-east-2.console.aws.amazon.com'
            }
        
        
$(document).on 'turbolinks:before-cache', ->
    $('#calendar').empty()