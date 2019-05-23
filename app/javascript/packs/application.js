import "bootstrap";
import { openNav, closeNav } from "./sidenav";

let sidenav = document.querySelector(".openbtn");
  sidenav.addEventListener('click', () => {
    event.preventDefault();
    openNav();
  });

let sidenav_close = document.querySelector(".closebtn");
  sidenav_close.addEventListener('click', () => {
    event.preventDefault();
    closeNav();
  });
