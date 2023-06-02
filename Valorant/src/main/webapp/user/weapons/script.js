function openOverlay(numero) {
    var overlay = document.getElementById("myOverlay" + numero);
    overlay.classList.add("active");
  }
  
  function closeOverlay(numero) {
    var overlay = document.getElementById("myOverlay" + numero);
    overlay.classList.remove("active");
  }
  