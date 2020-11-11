// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)

const navbar = document.querySelector(".navbar");
window.onscroll = () => {
    if (window.scrollY > 300) {
      navbar.classList.add('navbar-active');
      navbar.classList.remove('navbar-inactive');
    } else {
      navbar.classList.remove('navbar-active');
      navbar.classList.add('navbar-inactive');
    }
};

var places = require('places.js');
var placesAutocomplete = places({
  appId: 'plFZ8FG53E30',
  apiKey: '3551e24d4f9dadf5055cefc35cdab3e5',
  container: document.querySelector('#address-input')
});
