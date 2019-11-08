const express = require("express");
const router = express.Router();

const sql = require("../utils/sql");

router.get("/", (req, res) => {
  console.log("at the main route");

  let query = "SELECT * FROM tbl_card";

  sql.query(query, (err, result) => {
    if (err) {
      throw err;
      console.log(err);
    }

    console.log(result);

    res.render("home", { fav: result });
  });
});

router.get("/favorite/:id", (req, res) => {
  console.log("at the user route");
  console.log(req.params.id);

  let query = `select * from tbl_info where ID=${req.params.id}`;

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
