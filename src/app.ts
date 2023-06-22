import app from './init';
import {PORT} from "./config";

app.listen(PORT);
console.info('app listen in port', PORT);
