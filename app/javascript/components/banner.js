import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Book your next coding lesson"],
    typeSpeed: 100,
    loop: true
  });
}

export { loadDynamicBannerText };
