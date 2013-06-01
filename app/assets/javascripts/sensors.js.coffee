jQuery ->
  Morris.Line
    element: 'soil_moisture_chart'
    data: $('#soil_moisture_chart').data('sensors')
    xkey: 'created_at'
    ykeys: ['value']
    labels: ['Soil Moisture']