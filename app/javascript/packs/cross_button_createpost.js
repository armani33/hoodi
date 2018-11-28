document.querySelector(".cross-button").addEventListener("click", (event) => {
 event.preventDefault();
 document.querySelector(".create-post-window").classList.toggle("hidden");
});
