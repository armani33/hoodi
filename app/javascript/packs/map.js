import "mapbox-gl/dist/mapbox-gl.css";
import mapboxgl from 'mapbox-gl/dist/mapbox-gl.js';
import MapboxDirections from '@mapbox/mapbox-gl-directions/dist/mapbox-gl-directions';




const mapElement = document.getElementById('map');

if (mapElement) { // only build a map if there's a div#map to inject into
  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  const map = new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/streets-v10'
  });

  const markers = JSON.parse(mapElement.dataset.markers);

  markers.forEach((marker) => {
    new mapboxgl.Marker()
      .setLngLat([marker.lng, marker.lat])
      // console.log(map);
      .addTo(map);
  })


  if (markers.length === 0) {
    map.setZoom(1);
  } else if (markers.length === 1) {
    map.setZoom(12.5);
    map.setCenter([markers[0].lng, markers[0].lat]);
  } else {
    const bounds = new mapboxgl.LngLatBounds();
    markers.forEach((marker) => {
      bounds.extend([marker.lng, marker.lat]);
    });
    map.fitBounds(bounds, { duration: 0, padding: 75 })
  }


  document.querySelectorAll('.footer-link-localisation a').forEach( (element) => {
    element.addEventListener('click', (event) => {
      event.preventDefault();
      console.log('ENV[MAPBOX_API_KEY]')
      const lat = event.target.getAttribute('lat');
      const lng = event.target.getAttribute('lng');

      new mapboxgl.Marker()
        .setLngLat([lng, lat])
        .addTo(map);
    });
  });



  var directions = new MapboxDirections({
    accessToken: mapboxgl.accessToken,
    unit: 'metric',
    profile: 'mapbox/cycling',
    controls: {inputs: false}
  });

  var map = new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/streets-v9'
  });

  map.addControl(directions, 'top-left');
}




//Localisation.addEventListener("click", function(e){
   // event.preventDefault();

    //markerCardOwner = {lat: <%= event.user.latitude %>, lng: <%= event.user.longitude %>};

    //console.log(markerCardOwner);
    //new mapboxgl.Marker()
     // .setLngLat([markerCardOwner.lng, markerCardOwner.lat])
      // console.log(map);
     // .addTo(map);

//});
