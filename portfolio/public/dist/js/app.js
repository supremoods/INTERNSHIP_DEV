const element = document.querySelector(".cover-wrapper");

const scrollBtn = document.querySelector(".scroll-btn");

scrollBtn.addEventListener("click", () => window.location.href='#about');

const aboutCont = document.querySelector(".about-container");

window.addEventListener("scroll", () => {
   const coverElement = document.querySelector(".cover-container").offsetHeight;

   const y = window.scrollY + 300
   if ( y  > coverElement) {
      aboutCont.classList.add("active");
      element.classList.add("active");
   } else {
      aboutCont.classList.remove("active");
      element.classList.remove("active");
   }
});

const observer = new IntersectionObserver(entries => {
   entries.forEach(entry => {
      if (entry.isIntersecting) {
         entry.target.classList.add("show");
      } else {
         entry.target.classList.remove("show");
      }
   });
});

const hiddenElements = document.querySelectorAll(".hid");

hiddenElements.forEach(element => {
   observer.observe(element);
});


const viewMoreBtn = document.querySelector(".view-more-btn button");
const contactBtn = document.querySelector(".contact-me-btn");
viewMoreBtn.addEventListener("click", () => {
   window.location.href = "projects.html";
});

contactBtn.addEventListener("click", () => {
   window.location.href = "contact.html";
});

const readMoreBtn = document.querySelector(".read-more-btn");

readMoreBtn.addEventListener("click", () => {
   window.location.href = "about.html";
});
 
