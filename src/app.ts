import app from './init';
import {configEnv} from "./config";

app.listen(configEnv.PORT);
console.info('app listen in port', configEnv.PORT);
