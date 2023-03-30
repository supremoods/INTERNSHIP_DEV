<template>
    <div class="bg-base-color flex flex-col text-primary-ligth-txt">
        <Navbar />
        <cover-container />
        <project-container :projects="projects"/>
        <Footer />
    </div>
</template>

<script>
export default {
    data(){
        return{
            projects:[
                {
                    name: 'Dorys Online Resetvation System',
                    img: 'dorys.png'
                },
                {
                    name: 'abyss',
                    img: 'abyss.png'
                },
                {
                    name: 'EVS - Online Voting System',
                    img: 'evs.png'
                }
            ]
        }
    },

    // intersectionObserver
    mounted() {
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
    @import '~@/assets/css/project.css';
</style>