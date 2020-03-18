
$(document).ready(function(){
  $('#calendar').fullCalendar({
    navLinks: true,
    selectable: true,
    selectMirror: true,
    selectHelper: true,
    plugins: [ 'interaction', 'dayGrid' ],
    editable: true,
    
  });
});  
  


$(document).on('turbolinks:load', function(){
  $('#calendar').fullCalendar({
    dayClick: function(date, jsEvent, view){
      window.location.href = '/timers/new';
    }
  });
});
  
    


        


