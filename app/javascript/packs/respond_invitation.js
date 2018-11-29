const neutral = document.querySelector('.neutral');
const accepted = document.querySelector('.accepted');
const decline = document.querySelector('.decline')

document.querySelector(".footer-link-invitation").addEventListener("click", (event) => {
 event.preventDefault();
 if (neutral.classList.contains('hidden')){
  if(accepted.classList.contains('hidden')){
    document.querySelector(".accepted").classList.remove("hidden");
    document.querySelector(".decline").classList.add("hidden");
  }else{
    document.querySelector(".accepted").classList.add("hidden");
    document.querySelector(".decline").classList.remove("hidden");
  }
 } else{
  document.querySelector(".neutral").classList.add("hidden");
  document.querySelector(".accepted").classList.remove("hidden");
 }
});

