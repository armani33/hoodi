const pinkCards = document.querySelectorAll(".pink-card");

pinkCards.forEach((pinkCard) => {

const responseEvent = pinkCard.querySelector(".response-event");
const buttonCommentEvent = pinkCard.querySelector(".comment-button-event")
const commentContentEvent = pinkCard.querySelector("#comment-event")
toggleResponses(buttonCommentEvent, responseEvent, commentContentEvent);

});

function toggleResponses(button, response, comment) {
  button.addEventListener("click", (event) => {
    event.preventDefault();
document.querySelector(".new-message").classList.add("hidden");
response.classList.toggle("hidden");
comment.classList.toggle("underline");
  });
};
