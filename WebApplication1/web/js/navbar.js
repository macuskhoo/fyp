$(document).ready(function(){
    // selected elements
var navTrigger = document.getElementById('nav-trigger');
var nav = document.getElementById('nav');
var header = document.getElementById('header');
var heading = document.getElementById('heading');
var labels = document.getElementsByClassName('nav-label');

// sizing
var windowHeight = window.innerHeight;
var windowWidth = window.innerWidth;
var fontSize = windowHeight*0.1;
var headingSize = windowWidth*0.1;

resize();

// Event Listening
navTrigger.addEventListener('click', navToggle);
window.addEventListener('resize', resize);

function resize() {
  windowHeight = window.innerHeight;
  windowWidth = window.innerWidth;
  fontSize = windowWidth*0.015;
  headingSize = windowWidth*0.1;
  if(headingSize > windowHeight*0.3) headingSize = windowHeight*0.3; 
  for(var i = 0; i < labels.length; i++) {
      if(windowWidth<800) fontSize = 35;
    labels[i].style.fontSize = fontSize+'px';
    labels[i].style.height = fontSize+'px';
    labels[i].style.marginTop = '-'+fontSize*0.6+'px';
  }
}

function navToggle(e) {
  var closed = (navTrigger.className.indexOf('close') > 0); 
  if(closed) {
    navTrigger.className = 'nav-trigger open';
    nav.className = 'out';
  } else {
    navTrigger.className = 'nav-trigger close';
    nav.className = 'in';
  }
}


window.onload = resize();
});