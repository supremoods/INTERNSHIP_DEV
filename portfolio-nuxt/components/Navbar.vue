<template>
   <div class="navbar-container fixed flex h-[70px] w-full justify-center items-center pt-[70px] z-10 " :class="{'active': navBg}" >
      <div class="navbar-wrapper flex justify-center items-center w-full" :class="{'active': navBg}">
         <div class="navbar flex justify-center items-center w-3/5">
            <div class="navbar-logo flex-grow">
               <!-- logo img  -->
               <nuxt-link to="/" class="logo">
                  <img src="~/assets/icons/logo.png" alt="logo" class="logo-img">
               </nuxt-link>
            </div>
            <div @click="showSideBar()" class="menu-btn-container hidden">
               <div class="menu-btn hover:text-secondary-txt">
                  <i class='bx bx-menu'></i>
               </div>
            </div>
            <div class="navbar-links flex" :class="{'active' : active}">
               <!-- nav links -->
               <div class="back-btn-container hidden" @click="showSideBar()">
                  <button class="back-btn hover:text-secondary-txt">
                     <i class='bx bx-chevron-right'></i>
                  </button>
               </div>

               <div class="cont flex gap-5">
                  <div class="navbar-link">
                     <nuxt-link to="/about">About</nuxt-link>
                  </div>
                  <div class="navbar-link">
                     <nuxt-link to="/projects">Projects</nuxt-link>
                  </div>
                  <div class="navbar-link">
                     <nuxt-link to="/contact">Contact</nuxt-link>
                  </div>
               </div>

               <!-- social media links -->
               <div class="soc-med-links">
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
                     <a href="https://www.github.com/johnlappay" target="_blank"><i class='bx bxl-github'></i></a>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</template>

<script>

export default{
   data() {
      return {
         active: false,
         navBg: false
      }
   },
   methods: {
      showSideBar() {
         this.active = !this.active;
         console.log(this.active);
      },
      // scroll event listener for navbar background color
      scrollEvent() {
         window.addEventListener('scroll', () => {
            if (window.scrollY > 0) {
               this.navBg = true;
            } else {
               this.navBg = false;
            }

         })
      } 
   },
   mounted() {
      this.scrollEvent();
   }

}

</script>


