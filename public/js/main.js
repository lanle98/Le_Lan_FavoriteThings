(() => {
  console.log("fired");
  let favs = document.querySelectorAll(".favs");
  let closeBtn = document.querySelector(".closeBtn");
  console.log(closeBtn);

  let description = document.querySelector(".desc");

  closeBtn.addEventListener("click", function() {
    description.classList.remove("desc-display");
    console.log("AAAAA");
  });

  function parseData(myFav) {
    description.classList.add("desc-display");
    let name = description.querySelector("h2");
    let p = description.querySelector("p");
    let personal = description.querySelector("h5");
    let backgroundImg = description.querySelector(".background-image");
    let video = description.querySelector("iframe");

    backgroundImg.style.background = `url(../${myFav.currentSrc})`;
    name.innerHTML = myFav.name;
    p.innerHTML = myFav.description;
    personal.innerHTML = myFav.personal;
    video.src = myFav.video;
  }

  function getData(e) {
    e.preventDefault();

    let url = `/favorite/${this.getAttribute("href")}`;
    let firstElement = this.firstElementChild;
    let currentImage = firstElement.firstElementChild.getAttribute("src");
    console.log(currentImage);

    fetch(url)
      .then(res => {
        return res.json();
      })
      .then(data => {
        console.log(data);
        data.currentSrc = currentImage;
        parseData(data);
      });
  }

  favs.forEach(fav => fav.addEventListener("click", getData));
})();
