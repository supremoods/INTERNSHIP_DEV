<template>
   <div class="cover-container pt-[70px] h-[80vh] flex justify-center">
      <div class="cover-wrapper flex relative w-3/5" :class="{'active':shrink}">
         <div class="title-wrapper flex flex-col h-[60%] mt-28 gap-24">
            <div class="header-title hid">
               <h1 class="title text-5xl font-bold transition-all ease-in"><span class="text-secondary-txt">{ </span>Full Stack<span class="text-secondary-txt"> }</span><span class=" font-normal"> Developer</span></h1>
               <h1 class="title text-8xl font-bold transition-all ease-in">JOHN LAPPAY</h1>
            </div>
            <div class="contact-me-btn-container w-full flex justify-start items-start flex-grow hid">
               <nuxt-link to="/contact" 
                  class="contact-me-btn flex justify-center items-center gap-2 contact-me-btn bg-secondary-txt cursor-pointer p-2 rounded-md hover:bg-secondary-light-txt transition-all ease-in font-semibold">
                  Contact Me <i class='bx bxl-telegram'></i>
               </nuxt-link>
            </div>
            <div class="footer-container flex w-full hid">
               <div class="soc-med-links flex gap-3 flex-grow">
                  <div class="soc-med-link">
                     <a href="https://www.instagram.com/johnlappay/" target="_blank"><i
                           class='bx bxl-instagram-alt'></i></a>
                  </div>
                  <div class="soc-med-link">
                     <a href="https://www.facebook.com/johnlappay" target="_blank"><i
                           class='bx bxl-facebook'></i></a>
                  </div>
                  <div class="soc-med-link">
                     <a href="https://www.linkedin.com/in/johnlappay/" target="_blank"><i
                           class='bx bxl-linkedin'></i></a>
                  </div>
                  <div class="soc-med-link">
                     <a href="https://www.github.com/supremoods" target="_blank"><i class='bx bxl-github'></i></a>
                  </div>
               </div>
               <div class="scroll-btn-container">
                  <button @click="scrollToAbout()" class="scroll-btn flex justify-center items-center group">
                     <i
                        class='bx bxs-mouse text-secondary-txt text-[32px] group-hover:text-primary-txt transition-all ease-in'></i>
                     <span class="group-hover:text-secondary-txt transition-all ease-in">Scroll</span>
                     <i
                        class='bx bx-down-arrow-alt text-[32px] text-secondary-txt group-hover:text-primary-txt transition-all ease-in'></i>
                  </button>
               </div>
            </div>
         </div>
         <div class="dp-container absolute bottom-0 right-0 h-[700px] transition-all ease-in">
            <img class="object-cover h-full w-full" src="~/assets/img/prof_comp.png" alt="dp" >
         </div>
      </div>
   </div>
</template>

<script>
export default ({
   props: {
      shrink: Boolean
   },  
   methods: {
      scrollToAbout() {
         const about = document.getElementById('about')
         about.scrollIntoView({ behavior: 'smooth' })
      }
   },   
   mounted(){

   }
})
</script>




