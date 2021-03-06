import "bootstrap";
import { loadDynamicBannerText } from '../components/banner';


import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';

initMapbox();

const typedText = document.getElementById("banner-typed-text");

if (typedText !== null) {
  loadDynamicBannerText();
}
