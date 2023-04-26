<template>
    <div class="proj-container flex bg-base h-full" id="about">
        <div class="proj-wrapper w-full flex justify-center h-full">
          <div class="w-3/5 flex flex-col gap-10 relative">
            <div class="header-title absolute top-[-4rem] hid">
              <h1 class="text-8xl font-bold text-primary-txt">Projects</h1>
            </div>
            <div class="proj-content pt-20 pb-44 flex gap-10 flex-col">
               <div class="proj-list max-w-6xl mx-auto grid grid-cols-1 md:grid-cols-2 gap-8 py-20 pb-40 ">
                  <a v-for="(project, index) in projects" href="#" class="w-full block shadow-2xl hid" :key="index">
                     <div class="cards relative overflow-hidden">
                        <div class="h-full object-cover">
                           <img :src="require(`~/assets/img/${project.img}`)" alt="portfolio" class="transform hover:scale-125 transition duration-2000 ease-out object-cover w-full"/>
                        </div>
                        <h1 class="absolute top-10 left-10 text-gray-50 font-bold text-xl bg-black rounded-md px-2">
                           {{ project.name }}
                        </h1>
                        <h1 class="absolute bottom-10 left-10 text-gray-50 font-bold text-xl">{{ index+1 }}</h1>
                     </div>
                  </a>                  
               </div>
            </div>
          </div>
        </div>
    </div>
</template>

<script>
export default {
    props: ['projects']
}
</script>