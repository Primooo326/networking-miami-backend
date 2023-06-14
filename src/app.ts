import express from "express";
import morgan from "morgan";
import bodyParser from "body-parser";
import authRoutes from "./routes/auth.routes";
import userRoutes from "./routes/users.routes";
import mailRoutes from "./routes/mail.routes";
import fs from "fs";

const app = express();

import cors from "cors";
app.use(morgan("dev"));
app.use(express.json());
app.use(cors());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());
app.get("/", (req, res) => {
  res.send(fs.readFileSync("resetPasswordSuccess.html", "utf8"));
});
app.get("/ping", async (req, res) => {
  const routes: any[] = [];
  app._router.stack.forEach((middleware) => {
    if (middleware.route) {
      routes.push(middleware.route.path);
    } else if (middleware.name === "router") {
      middleware.handle.stack.forEach((handler) => {
        routes.push(handler.route.path);
      });
    }
  });

  console.log("Rutas registradas:");
  routes.forEach((route) => {
    console.log(route);
  });
  res.json(routes);
});
app.use("/api/auth", authRoutes);
app.use("/api/mail", mailRoutes);
app.use("/api/users", userRoutes);

export default app;
