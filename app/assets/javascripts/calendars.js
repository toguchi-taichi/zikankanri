
$(document).ready(function(){
  $('#calendar').fullCalendar({
    navLinks: true,
    selectable: true,
    selectMirror: true,
    selectHelper: true,
    plugins: [ 'interaction', 'dayGrid' ],
    editable: true,
    select: function(date){
      x = ['2020-03-27', '2020-03-28'];
      $.each(x, function(index, elem){
        $('td').filter(function(){
        return $(this).attr('data-date') == elem;
        }).css('background-color', 'red');
      });
    }
  });
  $.each(gon.month_data, function(index, elem){
    $('td[data-date="'+elem+'"]').css('background-color', 'red');
  });
});  
  


$(document).on('turbolinks:load', function(){
  $('#calendar').fullCalendar({
    dayClick: function(date, jsEvent, view){
      window.location.href = '/timers/new';
    }
  });
});
  
    


        


