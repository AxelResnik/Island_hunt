import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Find an island ye like ^1000", "Choose ye transportation method ^1000", "Book ye retreat ^1000", "Are ye ready for an adventure ^1000"],
    typeSpeed: 70,
    loop: true
  });
}

export { loadDynamicBannerText };
