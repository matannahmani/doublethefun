import mapboxgl from 'mapbox-gl';

const fitMapToMarkersIndex = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
};

const initMapboxIndex = () => {
  const mapElement = document.getElementById('map-index');

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map-index',
      style: 'mapbox://styles/mapbox/streets-v10'
    });

    const markers = JSON.parse(mapElement.dataset.markers);
     markers.forEach((marker) => {
       new mapboxgl.Marker()
         .setLngLat([ marker.lng, marker.lat ])
         .addTo(map);
     });

     fitMapToMarkersIndex(map, markers);
  }
};

export { initMapboxIndex };
