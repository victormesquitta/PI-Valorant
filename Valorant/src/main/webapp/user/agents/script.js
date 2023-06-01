function openOverlay() {
  var overlay = document.getElementsByClassName("overlay")[0];
  overlay.classList.add("active");
}

function closeOverlay() {
  var overlay = document.getElementsByClassName("overlay")[0];
  overlay.classList.remove("active");
}