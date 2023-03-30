<template>
   <!-- recent projects components-->
   <div class="rec-projects-container h-full bg-base-color">
      <div class="rec-projects-wrapper w-full flex justify-center items-cenetr py-32">
         <div class="rec-projects w-3/5 flex flex-col gap-[10em] h-full">
            <div class="header-container flex items-center w-full flex-wrap gap-10 hid">
               <div class="rec-projects-title flex-grow ">
                  <h1 class="text-8xl font-bold">Recent Projects</h1>
               </div>
               <div class="view-more-btn">
                  <button class="flex justify-center items-center gap-2 view-more-btn bg-secondary-txt cursor-pointer p-2 rounded-md hover:bg-secondary-light-txt transition-all ease-in font-semibold">View More <i class='bx bxs-right-arrow-alt'></i>
                  </button>
               </div>
            </div>

            <div class="grid md:grid-cols-3 gap-8 lg:-mt-8 pb-40">
               <a href="#" class="w-full block col-span-3 shadow-2xl hid">
                  <div class="cards relative overflow-hidden">
                     <div class="w-full flex justify-end">
                        <img src="~/assets/img/dorys.png" alt="portfolio" class="w-[70%] rec-proj transform hover:scale-125 transition duration-2000 ease-out">
                     </div>
                     <h1 class="proj-title">Dory's Online Reservation System</h1>
                     <h1 class="proj-num ">01</h1>
                  </div>
               </a>
               <a href="#" target="_blank" class="w-full block col-span-3  sm:col-span-2 shadow-2xl hid">
                  <div class="cards relative overflow-hidden">
                     <div class="w-full flex justify-end">
                        <img src="~/assets/img/abyss.png" alt="portfolio" class="w-[70%] rec-proj transform hover:scale-125 transition duration-2000 ease-out">
                     </div>
                     <h1 class="proj-title"> Abyss </h1>
                     <h1 class="proj-num">02</h1>
                  </div>
               </a>
               <a href="#" target="_blank" class="w-full block col-span-3 sm:col-span-1  object-cover hid">
                  <div class="cards relative overflow-hidden shadow-2xl">
                     <div class="w-full flex justify-end">
                        <img src="~/assets/img/evs.png" alt="portfolio" class="w-[70%] rec-proj transform hover:scale-125 transition duration-2000 ease-out object-cover shadow-2xl">
                     </div>
                     <h1 class="proj-title absolute top-10 left-10 text-gray-50 font-bold text-xl bg-black rounded-md px-2"> EVS - Online Voting System</h1>
                     <h1 class="proj-num absolute bottom-10 left-10 text-gray-50 font-bold text-xl">03</h1>
                  </div>
               </a>
            </div>
         </div>
      </div>
   </div>
</template>