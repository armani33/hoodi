document.querySelector(".message-button").addEventListener("click", (event) => {
  event.preventDefault();
// if (document.querySelector(".response")!=null) {
  document.querySelector(".response").classList.add("hidden");
  document.querySelector("#comment").classList.remove("underline");
// }
const messageFavour = document.querySelector(".new-message");
messageFavour.classList.toggle("hidden");
});




// document.querySelector(".response hidden")

// document.querySelector(".response")
