<template>
    <div class="bg-base-color flex flex-col text-primary-ligth-txt">
        <Navbar/>
        <cover-container/>
        <about-container/>
        <tech-stack-container :techStacks="techStacks"/>
        <Footer/>
    </div>
</template>

<script>
export default{
    data(){
        return{
            techStacks : [
                {
                    name: 'HTML5',
                    img: 'html5.png'
                },
                {
                    name: 'CSS3',
                    img: 'css.png'
                },
                {
                    name: 'JavaScript',
                    img: 'js.png'
                },
                {
                    name: 'PHP',
                    img: 'php.png'
                },
                {
                    name: 'NodeJS',
                    img: 'nodejs.png'
                },
                {
                    name: 'MySQL',
                    img: 'mysql.png'
                },
                {
                    name: 'MongoDB',
                    img: 'mongodb.png'
                },
                {
                    name: 'ReactJS',
                    img: 'reactjs.png'
                },
                {
                    name: 'Python',
                    img: 'python.png'
                },
                {
                    name: 'Firebase',
                    img: 'firebase.png'
                },
                {
                    name: 'Git',
                    img: 'git.png'
                },
                {
                    name: 'Android',
                    img: 'android.png'
                }
            ]
             
        }
    },
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
    }
}
</script>

<style>
   @import '~/assets/css/about.css';
</style>