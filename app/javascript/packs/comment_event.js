const responseEvent = document.querySelector(".response-event");
const buttonCommentEvent = document.querySelector(".comment-button-event")
const commentContentEvent = document.querySelector("#comment-event")
toggleResponses(buttonCommentEvent, responseEvent, commentContentEvent);

function toggleResponses(button, response, comment) {
  button.addEventListener("click", (event) => {
    event.preventDefault();
document.querySelector(".new-message").classList.add("hidden");
response.classList.toggle("hidden");
comment.classList.toggle("underline");
  });
}
