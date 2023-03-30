<template>
    <div class="bg-base-color flex flex-col text-primary-ligth-txt">
        <Navbar/>
        <cover-container/>
        <contact-container/>
        <Footer/>
    </div>
</template>

<script>
export default{
    mounted(){
        const observer = new IntersectionObserver((entries) => {

        entries.forEach(entry => {
            if (entry.isIntersecting) {
                entry.target.classList.add('show')
            } else {
                entry.target.classList.remove('show')
            }
        })
        })

        const elements = document.querySelectorAll('.hid')
        elements.forEach(element => {
        observer.observe(element)
        })
    }
}
</script>

<style>
    @import '~/assets/css/contact.css';
</style>