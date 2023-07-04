import app from './init';
import socketServer from "./socket";
import configEnv from "./config";
import {createServer} from "http";
const server = createServer(app);

socketServer(server);
server.listen(configEnv.PORT, () => {
  console.info("app listen in ", "http://localhost:" + configEnv.PORT);
});
