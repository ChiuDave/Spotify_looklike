const express = require('express');
const db = require('./db.js')
const app = express();
const port =  3000;
app.use(express.json());

app.listen(port, () => {
    console.log(`Server is running on http://localhost:${port}`);
});
