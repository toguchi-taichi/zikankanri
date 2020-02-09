$(document).ready ->
  g = gon.day
  console.log g
  ctx = document.getElementById('mychart').getContext('2d')
  myChart = new Chart(ctx,
    type: 'bar'
    data:
      labels: g
      datasets: [ {
        label: '勉強時間'
        data: [
          gon.counter[g[0]]
          gon.counter[g[1]]
          gon.counter[g[2]]
          gon.counter[g[3]]
          gon.counter[g[4]]
          gon.counter[g[5]]
          gon.counter[g[6]]
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
  g = gon.day
  ctx = document.getElementById('mychart').getContext('2d')
  myChart = new Chart(ctx,
    type: 'bar'
    data:
      labels: gon.day
      datasets: [ {
        label: '勉強時間'
        data: [
          gon.counter[g[0]]
          gon.counter[g[1]]
          gon.counter[g[2]]
          gon.counter[g[3]]
          gon.counter[g[4]]
          gon.counter[g[5]]
          gon.counter[g[6]]
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
          
 
