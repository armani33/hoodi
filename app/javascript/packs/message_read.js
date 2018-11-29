const messageItems = document.querySelectorAll(".message-item")


messageItems.forEach((messageItem) => {
  // const item = messageItem.querySelector(".avatar-mail-box")
  const messageContent = messageItem.querySelector(".message-content");
  messageItem.addEventListener("click", (event) => {
    // event.preventDefault();

    messageItem.classList.remove("read");
    messageContent.classList.toggle("hidden");
  });
});
