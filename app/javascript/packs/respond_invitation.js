const pinkCards = document.querySelectorAll(".pink-card")

pinkCards.forEach((pinkCard) => {

const neutral = pinkCard.querySelector('.neutral');
const accepted = pinkCard.querySelector('.accepted');
const decline = pinkCard.querySelector('.decline')

pinkCard.querySelector(".footer-link-invitation").addEventListener("click", (event) => {
 event.preventDefault();
 if (neutral.classList.contains('hidden')){
  if(accepted.classList.contains('hidden')){
    pinkCard.querySelector(".accepted").classList.remove("hidden");
    pinkCard.querySelector(".decline").classList.add("hidden");
  }else{
    pinkCard.querySelector(".accepted").classList.add("hidden");
    pinkCard.querySelector(".decline").classList.remove("hidden");
  }
 } else{
  pinkCard.querySelector(".neutral").classList.add("hidden");
  pinkCard.querySelector(".accepted").classList.remove("hidden");
 }
});
});
