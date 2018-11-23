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


  const userMarker = JSON.parse(mapElement.dataset.usermarker);

  var userMarkerElement = document.createElement('div');
  userMarkerElement.className = 'user-marker';
  userMarkerElement.style = `background-image: url(${mapElement.getAttribute('data-userimage')})`;
  //Add user marker
  new mapboxgl.Marker(userMarkerElement)
    .setLngLat([userMarker.lng, userMarker.lat])
    // console.log(map);
    .addTo(map);


  map.setZoom(12.5);
  map.setCenter([userMarker.lng, userMarker.lat]);


  document.querySelectorAll('.footer-link-localisation a').forEach( (element) => {
    element.addEventListener('click', (event) => {
      event.preventDefault();
      // remove past post marker
      const existingPostMarker = document.querySelector('div.user-post-marker')
      if (existingPostMarker){
        existingPostMarker.remove();
      };

      const lat = event.target.getAttribute('lat');
      const lng = event.target.getAttribute('lng');
      const avatarUrl = event.target.getAttribute('data-userimage');

      const userPostMarker = {lat: lat, lng: lng};

      var userPostMarkerElement = document.createElement('div');
      userPostMarkerElement.className = 'user-post-marker';
      userPostMarkerElement.style = `background-image: url(${avatarUrl})`;

      new mapboxgl.Marker(userPostMarkerElement)
        .setLngLat([lng, lat])
        .addTo(map);

      const markers = [userMarker, userPostMarker]
        const bounds = new mapboxgl.LngLatBounds();
        markers.forEach((marker) => {
          bounds.extend([marker.lng, marker.lat]);
        });
        map.fitBounds(bounds, { duration: 0, padding: 75 })

    });
  });

}















//   var directions = new MapboxDirections({
//     accessToken: mapboxgl.accessToken,
//     unit: 'metric',
//     profile: 'mapbox/cycling',
//     controls: {inputs: false}
//   });

//   var map = new mapboxgl.Map({
//     container: 'map',
//     style: 'mapbox://styles/mapbox/streets-v9'
//   });

//   map.addControl(directions, 'top-left');


