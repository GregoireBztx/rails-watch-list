// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
import 'bootstrap';
import Rails from "@rails/ujs";
import Turbolinks from "turbolinks";
import * as ActiveStorage from "@rails/activestorage";
import "channels";
import { initUpdateNavbarOnScroll } from '../components/navbar';

Rails.start();
Turbolinks.start();
ActiveStorage.start();



document.addEventListener('turbolinks:load', () => {
  // Call your JS functions here
  initUpdateNavbarOnScroll();
});

import { loadDynamicBannerText } from '../components/banner';

document.addEventListener('turbolinks:load', () => {
  // Call your JS functions here
  // [...]
  loadDynamicBannerText();
});

import { initSelect2 } from '../components/init_select2';

document.addEventListener("turbolinks:load", function() {
  initSelect2();
});

