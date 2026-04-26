const express = require("express")

const app = express();

app.get("/", (req, res) => {
  res.json({ message: "Automated CICD deploy to EC2!" })
});

module.exports = app;