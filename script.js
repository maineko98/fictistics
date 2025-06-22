/* HAMBURGER */

const burgerToggle = document.getElementById("burgerToggle");
const offScreenMenu = document.querySelector(".wysuwane-menu");

burgerToggle.addEventListener("click", (e) => {
e.stopPropagation();

const isActive = offScreenMenu.classList.toggle("active");
burgerToggle.src = isActive ? "assets/close.png" : "assets/burger.png";
});

window.addEventListener("click", (e) => {
if (!offScreenMenu.contains(e.target) && e.target !== burgerToggle) {
    offScreenMenu.classList.remove("active");
    burgerToggle.src = "assets/burger.png";
}
});