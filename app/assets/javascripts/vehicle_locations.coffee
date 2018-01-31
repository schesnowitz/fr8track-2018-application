@initMap = ->
  center = 
    lat: 42.877742
    lng: -97.380979

  map = new (google.maps.Map) $('#map')[0],
    zoom: 4
    center: center

  infowindow = new (google.maps.InfoWindow)

  $.getJSON '/vehicle_locations.json', (jsonData) ->
    $.each jsonData, (key, data) ->
      latLng = new (google.maps.LatLng)(data.lat, data.lng)
      marker = new (google.maps.Marker)
        position: latLng
        map: map
        title: data.driver_first_name + "'s" + ' Location: ' + data.description 
        animation: google.maps.Animation.DROP
      google.maps.event.addListener marker, 'click', ->
        infowindow.setOptions
          content: data.content
          maxWidth: 300
        infowindow.open map, marker