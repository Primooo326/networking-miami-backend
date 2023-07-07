import app from './init';
import { createServer } from "http";
import { initializeSocket, getSocketInstance } from "./socket";
import configEnv from "./config";

const server = createServer(app);
initializeSocket(server);

server.listen(configEnv.PORT, () => {
  console.info("app listen in ", "http://localhost:" + configEnv.PORT);
});
