const express = require("express");

const app = express();

app.get("/", (req, res, next) => {
  res.send("Hello Docker 🐳!");
});

app.listen(4000);
