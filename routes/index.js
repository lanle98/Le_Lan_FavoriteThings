const express = require("express");
const router = express.Router();

const sql = require("../utils/sql");

router.get("/", (req, res) => {
  console.log("at the main route");

  let query = "SELECT ID, Name, Image FROM tbl_favoritething";

  sql.query(query, (err, result) => {
    if (err) {
      throw err;
      console.log(err);
    }

    console.log(result);

    res.render("home", { food: result });
  });
});

router.get("/:id", (req, res) => {
  console.log("at the user route");
  console.log(req.params.id);

  let query = `select * from tbl_favoritething where foodID=${req.params.id}`;

  sql.query(query, (err, result) => {
    if (err) {
      throw err;
      console.log(err);
    }

    console.log(result);

    res.json(result[0]);
  });
});

module.exports = router;
