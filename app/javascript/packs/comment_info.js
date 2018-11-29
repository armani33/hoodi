const responseInfo = document.querySelector(".response-info");
const buttonCommentInfo = document.querySelector(".comment-button-info");
const commentContentInfo = document.querySelector("#comment-info");
toggleResponses(buttonCommentInfo, responseInfo, commentContentInfo);

function toggleResponses(button, response, comment) {
  button.addEventListener("click", (event) => {
    event.preventDefault();
document.querySelector(".new-message").classList.add("hidden");
response.classList.toggle("hidden");
comment.classList.toggle("underline");
  });
}
