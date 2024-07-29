const knex = require('knex');

const db= knex({ // on utilise le module knex pour se connecter a la base de donnee
    client: 'mssql', // le client sql server est mssql
    connection: {
      host: '127.0.0.1', // = localhost
      user: 'admin',  // utilisateur créer
      password: 'admin', 
      database: 'Projet', // toDo changer a nom de la database utilisé
      options: {
        enableArithAbort: true 
      }
    }
})

module.exports = {db};
