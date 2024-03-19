let buttonDropMenu = document.querySelector('#button-drop-menu');
let dropMenu = document.querySelector('#drop-menu');

buttonDropMenu.addEventListener('click', () => {
  dropMenu.classList.toggle('hidden');
});

let hamburgerOpen = document.querySelector('#hamburger-open');
let hamburgerClose = document.querySelector('#hamburger-close');
let slideMenu = document.querySelector('#slide-menu');
let slideMenuFixed = document.querySelector('#slide-menu-fixed');
let slideMenuFixedModal = document.querySelector('#slide-menu-fixed-modal');

hamburgerClose.addEventListener('click', () => {
  slideMenu.classList.toggle('hidden');
  slideMenuFixed.classList.toggle('hidden');
  slideMenuFixedModal.classList.toggle('hidden');
});

hamburgerOpen.addEventListener('click', () => {
  slideMenu.classList.toggle('hidden');
  slideMenuFixed.classList.toggle('hidden');
  slideMenuFixedModal.classList.toggle('hidden');
});

let mobileButtonDrop = document.querySelector('#mobile-button-drop');
let disclosure = document.querySelector('#disclosure-1');


mobileButtonDrop.addEventListener('click', () => {
  disclosure.classList.toggle('hidden');
});