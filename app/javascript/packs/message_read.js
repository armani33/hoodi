const messageItems = document.querySelectorAll(".message-item")


messageItems.forEach((messageItem) => {
  // const item = messageItem.querySelector(".avatar-mail-box")
  messageItem.addEventListener("click", (event) => {
    // event.preventDefault();
    console.log("cam croit etre trop badass. Et est mega maniaque!")
    messageItem.classList.remove("read");
  });
});
