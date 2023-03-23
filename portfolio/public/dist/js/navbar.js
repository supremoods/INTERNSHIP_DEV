const navWrap = document.querySelector(".navbar-wrapper");
const navCont = document.querySelector(".navbar-container");
const navbarlogo = document.querySelector(".navbar-logo");

window.addEventListener("scroll", () => {
   const y = window.scrollY ;
   if ( y  > 10) {
      navWrap.classList.add("active");
      navCont.classList.add("active");
   } else {
      navWrap.classList.remove("active");
      navCont.classList.remove("active");
   }
});


// if the resolution is less than 768px
const menuBtn = document.querySelector(".menu-btn-container");
const sideBar = document.querySelector(".navbar-links");
const backBtn = document.querySelector(".back-btn");

menuBtn.addEventListener("click", () => {
   sideBar.classList.toggle("active");
});

backBtn.addEventListener("click", () => {
   sideBar.classList.remove("active");
});


navbarlogo.addEventListener("click", () => {
   window.location.href = "index.html";
});