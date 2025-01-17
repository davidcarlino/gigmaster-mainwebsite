const hamburger = document.getElementById('hamburger');
const navMenu = document.getElementById('navMenu');
const headerButtons = document.getElementById('headerButtons');

// Toggle menu and buttons on hamburger click
hamburger.addEventListener('click', () => {
  navMenu.classList.toggle('active');
  headerButtons.classList.toggle('active');
});