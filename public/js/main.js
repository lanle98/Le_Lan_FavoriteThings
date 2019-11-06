(() => {
  console.log("fired");
  let foods = document.querySelectorAll(".foods");

  function parseData(dish) {
    let description = document.querySelector(".desc");
    description.innerHTML = `<p>${dish.Description}</p>`;
    description.innerHTML += `<h5 class="price m-4 text-center">$${dish.Price}</h5>`;
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
