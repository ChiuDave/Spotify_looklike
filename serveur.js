const express = require('express');
const db = require('./db')
const app = express();
const port =  3000;
app.use(express.json());

app.get('/users', async (req,res) => {
    try {
        db.select('*').from('Users') // Example knex query
        .then(result => res.json(result))
        .catch(err => res.status(500).json({ error: err.message }));
    } catch(err) {
        console.error(err)
        res.status(500).json({error: 'Erreur serveur'})
    }
})

app.get('/usersTest', async (req, res) => {
    try {
        const result = await db ('Users').select('*'); // Example knex query
        res.json(result);
    } catch (err) {
        res.status(500).json({ error: err.message });
    }
});

app.listen(port, () => {
    console.log(`Server is running on http://localhost:${port}`);
});
