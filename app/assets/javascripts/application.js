//= require rails-ujs
//= require_tree .
const svgPath = document.querySelectorAll('.path');

const svgText = anime({
  targets: svgPath,
  loop: true,
  direction: 'alternate',
  strokeDashoffset: [anime.setDashoffset, 0],
  easing: 'easeInOutSine',
  duration: 400,
  delay: (el, i) => { return i * 350 }
});
