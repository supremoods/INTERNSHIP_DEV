<template>
   <!-- about component -->
   <div class="about-container flex bg-base-dark h-full py-60" id="about" :class="{'active':shrink}">
      <div class="about-wrapper w-full flex justify-center items-center">
         <div class="w-3/5 flex flex-col gap-5">
            <div class="about-title hid">
               <h1 class="text-8xl font-bold">About Me</h1>
            </div>
            <div class="about-content hid">
               <p class="text-lg font-medium w-full">I am a Full Stack Developer from the Philippines. I am currently a 4th
                  year student at the Technological University of the Philippines taking up Bachelor of Science in
                  Information Technology. I am a self-taught developer who is passionate about learning new
                  technologies and creating new things. I am currently accepting freelance project.</p>
            </div>
            <div class="flex read-more-btn hid w-full justify-end">
               <nuxt-link to="/about"
                  class="flex justify-center items-center gap-2 read-more-btn bg-secondary-txt cursor-pointer p-2 rounded-md hover:bg-secondary-light-txt transition-all ease-in font-semibold">
                  Read More <i class='bx bxs-right-arrow-alt'></i>
               </nuxt-link>
            </div>
         </div>
      </div>
   </div>
</template>

<script>
export default{
   props: {
      shrink: Boolean
   }
}
</script>


