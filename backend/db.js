// db.js
const { Pool } = require('pg');

const pool = new Pool({
  connectionString: process.env.DATABASE_URL || "postgresql://neondb_owner:npg_0CvS9UqDMyTI@ep-silent-hill-a4tswjgk-pooler.us-east-1.aws.neon.tech/neondb?sslmode=require",
  min: 1,
  max: 10,             // maximum number of clients in the pool
  idleTimeoutMillis: 30000, // close idle clients after 30s
  connectionTimeoutMillis: 20000, // return an error if connection takes >2s
  // keepAlive: true,   // uncomment if you want TCP keep-alive
});

// Log (but don’t crash) on any errors from idle clients
pool.on('error', (err, client) => {
  console.error('Unexpected error on idle PostgreSQL client', err);
  // you could alert/monitor here
});

module.exports = {pool};
