
document.querySelector(".cross-button-1").addEventListener("click", (event) => {
 event.preventDefault();
 document.querySelector(".create-post-window-1").classList.add("hidden");
});
document.querySelector(".cross-button-2").addEventListener("click", (event) => {
 event.preventDefault();
 document.querySelector(".create-post-window-2").classList.add("hidden");
});
document.querySelector(".cross-button-3").addEventListener("click", (event) => {
 event.preventDefault();
 document.querySelector(".create-post-window-3").classList.add("hidden");
});



document.querySelector(".nav-yellow").addEventListener("click", (event) => {
 event.preventDefault();
 document.querySelector(".create-post-window-1").classList.remove("hidden");
});
document.querySelector(".nav-blue").addEventListener("click", (event) => {
 event.preventDefault();
 document.querySelector(".create-post-window-2").classList.remove("hidden");
});
document.querySelector(".nav-pink").addEventListener("click", (event) => {
 event.preventDefault();
 document.querySelector(".create-post-window-3").classList.remove("hidden");
});
