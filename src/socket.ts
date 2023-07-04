import { Server } from "socket.io";
import { userConnnect, userDisconnect, getSocketId } from "./socketHandlers/user.handlers";
import { userNotify } from "./socketHandlers/notify.handlers"; 
export default function (server) {
  const io = new Server(server, { cors: { origin: "*" } });

  io.on("connection", (socket) => {
    console.log("Alguien se ha conectado con Sockets");

    socket.on("userConnect", async (data) => {
      console.log("Usuario conectado: ", socket.id);
      await userConnnect(data, socket.id);
    });

    socket.on("disconnect", async () => {
      console.log("user disconnected");
      await userDisconnect(socket.id);
    });

    socket.on("new-notify",async (data)=>{
      console.log("notify:  ",data);
      const response = await userNotify(data,data.type)
      const socketId = await getSocketId(data.data.usuario_id)
      console.log("socketId: ",socketId);
      io.to(socketId).emit("notify",response)
    })
  });
}
