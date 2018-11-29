document.querySelector(".message-button").addEventListener("click", (event) => {
  event.preventDefault();
  document.querySelector(".response").classList.add("hidden");
  document.querySelector("#comment").classList.remove("underline");
const messageFavour = document.querySelector(".new-message");
messageFavour.classList.toggle("hidden");
});


