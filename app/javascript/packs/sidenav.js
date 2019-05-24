function openNav() {
  document.querySelector("#sidenavbar").style.width = "255px";
  document.querySelector("#main-content").style.marginLeft = "255px";
}

function closeNav() {
  document.querySelector("#sidenavbar").style.width = "0";
  document.querySelector("#main-content").style.marginLeft = "0";
}

export { openNav, closeNav }
