import "dotenv/config";
import { Client } from "pg";

const client = new Client({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME,
});

(async () => {
  try {
    await client.connect();
    console.log("✅ Connected to database");

    const res = await client.query("SELECT NOW()");
    console.log(res.rows);
  } catch (err) {
    console.error("❌ Database connection failed");
    console.error(err.message);
  }
})();
