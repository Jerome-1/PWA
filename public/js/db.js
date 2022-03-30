const mysql = require('mysql2/promise');
const config = {
    db: { /* do not put password or any sensitive info here, done only for demo */
      host: 'localhost',
      port: '3306', //This is the port your database is running on, hence why it is connecting.
      user: 'root', //Root user means remote user
      password: '',
      database: 'library', //Name of the database
      waitForConnections: true,
      connectionLimit: 2,
      queueLimit: 0,
    },
  };
  
  const pool = mysql.createPool(config.db); //Creates connection to database

// Utility function to query the database
async function query(sql, params) {
  // Debug queries to console if needed
  //console.log(mysql.format(sql, params));
  const [rows, fields] = await pool.execute(sql, params);
  return rows;
}

module.exports = {
  query,
}