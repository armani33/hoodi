import places from 'places.js';
if (document.querySelector('#user_address')) {
  var placesAutocomplete = places({
    // appId: process.env['YOUR_PLACES_APP_ID'],
    // apiKey: process.env['YOUR_PLACES_API_KEY'],
    container: document.querySelector('#user_address')
  });
};
