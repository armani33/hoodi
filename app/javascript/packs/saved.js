const neutral = document.querySelector('.not-saved');
const saved = document.querySelector('.saved');

document.querySelector(".footer-link-save").addEventListener("click", (event) => {


  if (neutral.classList.contains('hidden')){
    document.querySelector(".not-saved").classList.remove("hidden");
    document.querySelector(".saved").classList.add("hidden");
  }else{
    document.querySelector(".not-saved").classList.add("hidden");
    document.querySelector(".saved").classList.remove("hidden");
  }
});
