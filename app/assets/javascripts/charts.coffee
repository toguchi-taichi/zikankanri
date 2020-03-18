$(document).ready ->
  days = gon.days
  ctx = document.getElementById('mychart').getContext('2d')
  myChart = new Chart(ctx,
    type: 'bar'
    data:
      labels: days
      datasets: [ {
        label: '勉強時間'
        data: [
          gon.counter[days[0]]
          gon.counter[days[1]]
          gon.counter[days[2]]
          gon.counter[days[3]]
          gon.counter[days[4]]
          gon.counter[days[5]]
          gon.counter[days[6]]
        ]
        backgroundColor: [
          'rgba(255, 99, 132, 0.2)'
          'rgba(54, 162, 235, 0.2)'
          'rgba(255, 206, 86, 0.2)'
          'rgba(75, 192, 192, 0.2)'
          'rgba(153, 102, 255, 0.2)'
          'rgba(255, 159, 64, 0.2)'
          'rgba(255, 159, 64, 0.2)'
        ]
        borderColor: [
          'rgba(255,99,132,1)'
          'rgba(54, 162, 235, 1)'
          'rgba(255, 206, 86, 1)'
          'rgba(75, 192, 192, 1)'
          'rgba(153, 102, 255, 1)'
          'rgba(255, 159, 64, 1)'
          'rgba(255, 159, 64, 1)'
        ]
        borderWidth: 1
      } ]
    
    
    options: 
      scales: 
        yAxes: [ { 
          ticks: {
            callback: (value, index, values) ->
              value + '時間'
            beginAtZero: true
          }  
        } ] 
      title:
        display: true
        text: '時間管理データ'
        position: 'bottom'
        fontSize: 20
        padding: 20
        
      
          )
          
      

  
    

$(document).on 'turbolinks:load', ->
  days = gon.days
  ctx = document.getElementById('mychart').getContext('2d')
  myChart = new Chart(ctx,
    type: 'bar'
    data:
      labels: days
      datasets: [ {
        label: '勉強時間'
        data: [
          gon.counter[days[0]]
          gon.counter[days[1]]
          gon.counter[days[2]]
          gon.counter[days[3]]
          gon.counter[days[4]]
          gon.counter[days[5]]
          gon.counter[days[6]]
        ]
        backgroundColor: [
          'rgba(255, 99, 132, 0.2)'
          'rgba(54, 162, 235, 0.2)'
          'rgba(255, 206, 86, 0.2)'
          'rgba(75, 192, 192, 0.2)'
          'rgba(153, 102, 255, 0.2)'
          'rgba(255, 159, 64, 0.2)'
          'rgba(255, 159, 64, 0.2)'
        ]
        borderColor: [
          'rgba(255,99,132,1)'
          'rgba(54, 162, 235, 1)'
          'rgba(255, 206, 86, 1)'
          'rgba(75, 192, 192, 1)'
          'rgba(153, 102, 255, 1)'
          'rgba(255, 159, 64, 1)'
          'rgba(255, 159, 64, 1)'
        ]
        borderWidth: 1
      } ]
    
    
    options: 
      scales: 
        yAxes: [ { 
          ticks: {
            callback: (value, index, values) ->
              value + '時間'
            beginAtZero: true
          }
        } ]
      title:
        display: true
        text: '時間管理データ'
        position: 'bottom'
        fontSize: 20
        padding: 20
          )
          
 
