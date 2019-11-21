import "bootstrap";
import { loadDynamicBannerText } from '../components/banner';
// import mapboxgl from 'mapbox-gl';

// const insert_map = () => {
// mapboxgl.accessToken = 'pk.eyJ1IjoiaWJtbWciLCJhIjoiY2szOGw0MWp1MDl2czNjcnRxZzJlZDB4diJ9.AcGFizvxSXA8jmm2hDFSKg';
// const map = new mapboxgl.Map({
//   container: 'map',
//   style: 'mapbox://styles/mapbox/streets-v9',
//   center: [ -0.077, 51.533 ],
//   zoom: 12
// });
// i
// }

// const mapArea = document.getElementById("map");

// if (mapArea !== null) {
//   insert_map();
// }

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';

initMapbox();

const typedText = document.getElementById("banner-typed-text");

if (typedText !== null) {
  loadDynamicBannerText();
}
