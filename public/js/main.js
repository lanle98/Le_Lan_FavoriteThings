(() => {
  console.log("fired");
  let foods = document.querySelectorAll(".foods");
  let closeBtn = document.querySelector(".closeBtn");
  console.log(closeBtn);

  let description = document.querySelector(".desc");

  closeBtn.addEventListener("click", function() {
    description.classList.remove("desc-display");
    console.log("AAAAA");
  });

  function parseData(dish) {
    description.classList.add("desc-display");
    let p = description.querySelector("p");
    let price = description.querySelector("h5");
    let backgroundImg = description.querySelector(".background-image");

    backgroundImg.style.background = `url(../${dish.Image})`;
    p.innerHTML = `${dish.Description}`;
    price.innerHTML = `$${dish.Price}`;
  }

  function getData(e) {
    e.preventDefault();

    let url = `/${this.getAttribute("href")}`;

    fetch(url)
      .then(res => {
        return res.json();
      })
      .then(data => {
        console.log(data);
        parseData(data);
      });
  }

  foods.forEach(food => food.addEventListener("click", getData));
})();
