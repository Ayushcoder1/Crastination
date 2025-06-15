const { Pool } = require('pg');

// const connection = "postgresql://postgres:newayush123@localhost:5432/postgres";
const connection = "postgresql://postgres:newayush123@localhost:5432/postgres";

const pool = new Pool({
  connectionString: process.env.DATABASE_URL || connection,
  min: 1,
  max: 10,             
  idleTimeoutMillis: 30000, 
  connectionTimeoutMillis: 20000, 
});

pool.on('error', (err, client) => {
  console.error('Unexpected error on idle PostgreSQL client', err);
});

module.exports = {pool};
