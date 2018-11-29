const blueCards = document.querySelectorAll(".blue-card");

blueCards.forEach((blueCard) => {
blueCard.querySelector(".message-button").addEventListener("click", (event) => {
  event.preventDefault();
  blueCard.querySelector(".response").classList.add("hidden");
  blueCard.querySelector("#comment").classList.remove("underline");
const messageFavour = blueCard.querySelector(".new-message");
messageFavour.classList.toggle("hidden");
});
});
