import { Sequelize } from "sequelize-typescript";
import { config } from "./config/config";

export const sequelize = new Sequelize({
  username: config.username,
  password: config.password,
  database: config.database,
  host: config.host,
  port: parseInt(config.port, 10), 
  dialect: "postgres",  // Specifies that you're using PostgreSQL
  logging: false, // Optional: turn off SQL query logging
  dialectOptions: {
    ssl: {
      require: true, // If SSL is required by your RDS instance
      rejectUnauthorized: false, // To avoid "self-signed certificate" errors (optional)
    },
  },
});
