const pinkCards = document.querySelectorAll(".pink-card");

pinkCards.forEach((pinkcard) => {
  pinkcard.querySelector(".footer-link-invitation").addEventListener("click", (event) => {
    event.preventDefault();
    pinkcard.querySelector("#countdown").classList.toggle("hidden")
  });
});

