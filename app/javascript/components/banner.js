import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Create lists", "Create Bookmarks", "Store your favorite movies"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };