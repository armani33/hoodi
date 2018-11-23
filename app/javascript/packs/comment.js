const buttonComment = document.querySelector("#comment");
buttonComment.addEventListener("click", (event) => {
  const post_window = document.getElementById('response');
favourHTML = "<% if favour.responses.blank? %>Leave a response<% else %><%favour.responses.each do |response_object|%><%= render('responses/show', { response: response_object }) %><% end %><% end %>";
post_window.insertAdjacentHTML('afterend', favourHTML);
event.preventDefault();

});



