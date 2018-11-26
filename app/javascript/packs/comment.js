// const buttonComment = document.querySelector("#comment");
// buttonComment.addEventListener("click", (event) => {
// const post_window = document.getElementById('response');
// favourHTML = "test"
// event.currentTarget.classList.toggle("hidden-content");
// // favourHTML = "<% if favour.responses.blank? %>Leave a response<% else %><%favour.responses.each do |response_object|%><%= render('responses/show', { response: response_object }) %><% end %><% end %>";
// // post_window.insertAdjacentHTML('afterend', favourHTML);

// event.preventDefault();
// });


//
// Selection for favour
const responseFavour = document.querySelector(".response");
const buttonCommentFavour = document.querySelector(".comment-button");
const commentContentFavour = document.querySelector("#comment");
// Selection for Information
const responseInfo = document.querySelector(".response-info");
const buttonCommentInfo = document.querySelector(".comment-button-info");
const commentContentInfo = document.querySelector("#comment-info");
// Selection for Information
const responseEvent = document.querySelector(".response-event");
const buttonCommentEvent = document.querySelector(".comment-button-event")
const commentContentEvent = document.querySelector("#comment-event")

toggleResponses(buttonCommentFavour, responseFavour, commentContentFavour);
toggleResponses(buttonCommentInfo, responseInfo, commentContentInfo);
toggleResponses(buttonCommentEvent, responseEvent, commentContentEvent);

function toggleResponses(button, response, comment) {
  button.addEventListener("click", (event) => {
    event.preventDefault();
response.classList.toggle("hidden");
comment.classList.toggle("underline")
  });
}



// const responseInfo = document.querySelector(".response-info");
// const buttonCommentInfo = document.querySelector(".comment-button-info")
// const commentContentInfo = document.querySelector("#comment-info")
// console.log(buttonComment);
// buttonCommentInfo.addEventListener("click", (event) => {
//     event.preventDefault();
// responseInfo.classList.toggle("hidden");
// commentContentInfo.classList.toggle("underline")
//   });
