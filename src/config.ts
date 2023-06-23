import { config } from "dotenv";

config();

 const development = {
    PORT:4000,
    DB_HOST:"localhost",
    DB_USER:"root",
    DB_PASSWORD:"",
    DB_DATABASE:"networking3",
    DB_PORT:"3306",
    SECRET_KEY:"pojasjidaoihs#447%78as_66",
}
 const production = {
    PORT:4000,
    DB_HOST:"localhost",
    DB_USER:"pruebawp_networking",
    DB_PASSWORD:"$Networking2023",
    DB_DATABASE:"pruebawp_networking",
    DB_PORT:"3306",
    SECRET_KEY:"pojasjidaoihs#447%78as_66",
}

export const configEnv = process.env.NODE_ENV === "production" ? production : development;


// export const PORT = process.env.PORT || 3000;
// export const DB_HOST = process.env.DB_HOST || "localhost";
// export const DB_USER = process.env.DB_USER || "pruebawp_networking";
// export const DB_PASSWORD = process.env.DB_PASSWORD || "";
// export const DB_DATABASE = process.env.DB_DATABASE || "pruebawp_networking";
// export const DB_PORT = process.env.DB_PORT || 3306;
// export const SECRETKEY = process.env.SECRETKEY || "pojasjid@#aoihs#447%78as_66";
