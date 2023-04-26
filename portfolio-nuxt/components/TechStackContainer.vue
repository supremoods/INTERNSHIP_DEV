<template>
    <div class="tech-stack-container flex bg-base h-full mt-10 bg-base-violet-light ">
        <div class="tech-stack-wrapper w-full flex justify-center h-full py-10">
            <div class="w-3/5 flex flex-col gap-10 relative overflow-hidden">
                <div class="tech-stack-container flex gap-8 flex-col">
                    <div class="header-title flex hid">
                    <h1 class="bg-base-violet text-[20px] p-2 rounded-md font-bold">Technology Stack</h1>
                    </div>
                    <div class="tech-list grid grid-cols-4 hid">
                        <div class="tech-item" v-for="(techStack,index) in techStacks" :key="index">
                            <div class="tech-img-cont " :data-id="index">
                                <img :src="require(`~/assets/tech-stack-ico/${techStack.img}`)" alt="tech-stack" class="tech-img">
                            </div> 
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>

export default{
    props: ['techStacks'],
}

</script>