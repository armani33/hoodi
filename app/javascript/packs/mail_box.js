const messageIcon = document.querySelector(".message-button-navbar");
const map = document.querySelector("#map");
const mailBox = document.querySelector("#mail-box");

messageIcon.addEventListener("click", (event) => {
  event.preventDefault();
  map.classList.toggle("hidden");
  mailBox.classList.toggle("hidden");
})



