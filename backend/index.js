const express = require('express');
const cors = require("cors");
const rootRouter = require("./routes/index");
const path = require("path");

const app = express();

app.use(cors());
app.use(express.json());

app.use("", rootRouter);

app.use(express.static(path.join(__dirname, '../frontend/dist')));

app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname, '../frontend/dist/index.html'));
});

app.listen(3000, () => {
    console.log("Server listening on port 3000");
});
