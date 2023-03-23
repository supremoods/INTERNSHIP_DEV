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


// const projectList = document.querySelector(".proj-list");


// const cardTemplate = (title, img, num) => {
//    return ` 
//    <a href="#" class="w-full block shadow-2xl hid">
//       <div class="cards relative overflow-hidden">
//          <div class="h-full object-cover">
//             <img src="assets/img/${img}" alt="portfolio" class="transform hover:scale-125 transition duration-2000 ease-out object-cover w-full"/>
//          </div>
//          <h1 class="absolute top-10 left-10 text-gray-50 font-bold text-xl bg-black rounded-md px-2">
//            ${title}
//          </h1>
//          <h1 class="absolute bottom-10 left-10 text-gray-50 font-bold text-xl">${num}</h1>
//       </div>
//    </a>   
//    `
// }


// const projects = {
//    1: {
//       title: "Dory's Online Reservation System",
//       img: "dorys.png",
//    },
//    2: {
//       title: "Abyss",
//       img: "abyss.png",
//    },
//    3: {
//       title: 'EVS - Online Voting System',
//       img: 'evs.png'
//    }
// }

// const projectListItems = Object.keys(projects).map(key => {
//    return cardTemplate(projects[key].title, projects[key].img, key)
// }); 

// projectListItems.forEach(item => {
//    projectList.innerHTML += item
// })
// render to proj-list

