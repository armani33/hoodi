const yellowCards = document.querySelectorAll(".yellow-card");

yellowCards.forEach((yellowCard) => {

const responseInfo = yellowCard.querySelector(".response-info");
const buttonCommentInfo = yellowCard.querySelector(".comment-button-info");
const commentContentInfo = yellowCard.querySelector("#comment-info");
toggleResponses(buttonCommentInfo, responseInfo, commentContentInfo);


});

function toggleResponses(button, response, comment) {
  button.addEventListener("click", (event) => {
    event.preventDefault();
document.querySelector(".new-message").classList.add("hidden");
response.classList.toggle("hidden");
comment.classList.toggle("underline");
  });
};
