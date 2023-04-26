<template>
  <div class="bg-base-color flex flex-col text-primary-ligth-txt">
    <Navbar/>
    <Cover :shrink="shrink"/>
    <About :shrink="shrink"/>
    <RecProj/>
    <Footer/>
  </div>
</template>

<style>
   @import '~/assets/css/home.css';
</style>

<script>
export default {

  data() {
    return {
      shrink: false
    }
  },

  methods: {
    // scroll event listener for navbar background color
    shrinkCoverWrap() {      
      window.addEventListener('scroll', () => {
        if (window.scrollY > 300) {
            this.shrink = true
        } else {
            this.shrink = false
        }
      })          
    }
  },
  // intersectionObserver
  mounted() {
    const observer = new IntersectionObserver((entries) => {

      entries.forEach(entry => {
        if (entry.isIntersecting) {
          entry.target.classList.add('show')
        }else{
          entry.target.classList.remove('show')
        }
      })
    })

    const elements = document.querySelectorAll('.hid')
    elements.forEach(element => {
      observer.observe(element)
    })

    this.shrinkCoverWrap();
  }
}


</script>

