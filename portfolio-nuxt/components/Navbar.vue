<template>
   <div class="navbar-container fixed flex h-[70px] w-full justify-center items-center pt-[70px] z-10 ">
      <div class="navbar-wrapper flex justify-center items-center w-full">
         <div class="navbar flex justify-center items-center w-3/5">
            <div class="navbar-logo flex-grow">
               <!-- logo img  -->
               <div class="logo">
                  <img src="~/assets/icons/logo.png" alt="logo" class="logo-img">
               </div>
            </div>
            <div class="menu-btn-container hidden">
               <div class="menu-btn hover:text-secondary-txt">
                  <i class='bx bx-menu'></i>
               </div>
            </div>
            <div class="navbar-links flex">
               <!-- nav links -->
               <div class="back-btn-container hidden">
                  <button class="back-btn hover:text-secondary-txt">
                     <i class='bx bx-chevron-right'></i>
                  </button>
               </div>

               <div class="cont flex gap-5">
                  <div class="navbar-link">
                     <a href="about.html">About</a>
                  </div>
                  <div class="navbar-link">
                     <a href="projects.html">Projects</a>
                  </div>
                  <div class="navbar-link">
                     <a href="contact.html">Contact</a>
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