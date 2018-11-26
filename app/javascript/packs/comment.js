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
const response = document.querySelector(".response");
const buttonComment = document.querySelector(".comment-button")
const commentContent = document.querySelector("#comment")
// console.log(buttonComment);
buttonComment.addEventListener("click", (event) => {
    event.preventDefault();
response.classList.toggle("hidden");
commentContent.classList.toggle("underline")
  });

