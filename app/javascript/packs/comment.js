// Selection for favour
const blueCards = document.querySelectorAll(".blue-card");

blueCards.forEach((blueCard) => {

const responseFavour = blueCard.querySelector(".response");
const buttonCommentFavour = blueCard.querySelector(".comment-button");
const commentContentFavour = blueCard.querySelector("#comment");
toggleResponses(buttonCommentFavour, responseFavour, commentContentFavour);
});
// Selection for Information
// else if (document.querySelector(".response-info")!= null) {
// const responseInfo = document.querySelector(".response-info");
// const buttonCommentInfo = document.querySelector(".comment-button-info");
// const commentContentInfo = document.querySelector("#comment-info");
// toggleResponses(buttonCommentInfo, responseInfo, commentContentInfo);
// }
// Selection for Information
// else {
// const responseEvent = document.querySelector(".response-event");
// const buttonCommentEvent = document.querySelector(".comment-button-event")
// const commentContentEvent = document.querySelector("#comment-event")
// toggleResponses(buttonCommentEvent, responseEvent, commentContentEvent);
// }
function toggleResponses(button, response, comment) {
  button.addEventListener("click", (event) => {
    event.preventDefault();
document.querySelector(".new-message").classList.add("hidden");
response.classList.toggle("hidden");
comment.classList.toggle("underline");
  });
};
