import { config } from "dotenv";

config();

 const development = {
    PORT:4000,
    DB_HOST:"localhost",
    DB_USER:"root",
    DB_PASSWORD:"",
    DB_DATABASE:"networking4",
    DB_PORT:"3306",
    SECRET_KEY:"pojasjidaoihs#447%78as_66",
    URL_FRONT:"http://localhost:4200/",
    URL_BACK:"http://localhost:4000/",
    FILES_PATH:"../../images",
    MAIL_PATH:"views"

}
 const production = {
    PORT:4000,
    DB_HOST:"localhost",
    DB_USER:"pruebawp_networking",
    DB_PASSWORD:"$Networking2023",
    DB_DATABASE:"pruebawp_networking",
    DB_PORT:"3306",
    SECRET_KEY:"pojasjidaoihs#447%78as_66",
    URL_FRONT:"https://networking.miami/",
    URL_BACK:"https://nodejs.pruebawp.cymetria.com/",
    FILES_PATH:"../images",
    MAIL_PATH:"../views"
}

const configEnv = process.env.NODE_ENV === "production" ? production : development;
 export default configEnv