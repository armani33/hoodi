document.querySelector(".message-button").addEventListener("click", (event) => {
  event.preventDefault();

const messageFavour = document.querySelector(".new-message");
messageFavour.classList.toggle("hidden");
});


