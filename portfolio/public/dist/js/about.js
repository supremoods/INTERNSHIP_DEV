
const techStack = [ 
   'html5.png', 
   'css.png', 
   'js.png', 
   'php.png', 
   'nodejs.png', 
   'mysql.png',
   'mongodb.png',
   'reactjs.png', 
   'python.png',
   'firebase.png',
   'git.png',
   'android.png'
]


const path = 'assets/tech-stack-ico/'
const techList = document.querySelector('.tech-list')

techStack.map(tech => {
   console.log(tech)
   const techItem = document.createElement('div')
   const techImgCont = document.createElement('div')
   const techImg = document.createElement('img')
   techImg.src = `${path}${tech}`
   techItem.appendChild(techImgCont)
   techImgCont.appendChild(techImg)
   techList.appendChild(techItem)
   techItem.classList.add('tech-item')
   techImgCont.classList.add('tech-img-cont')
})


const observer = new IntersectionObserver(entries => {
   entries.forEach(entry => {
      if (entry.isIntersecting) {
         entry.target.classList.add("show");
      } else {
         entry.target.classList.remove("show");
      }
   });
});

const hiddenElements = document.querySelectorAll(".hid");

hiddenElements.forEach(element => {
   observer.observe(element);
});

 

