const port = 3003;

const express = require("express");

const app = express();

app.get("/produtos", (req, res, next) => {
  console.log("Passando pelo Middleware1");
  next();
  //Para ilustrar o middleware, passamos um aqui chamando essa info no console.
  //Se não chamar o next ele fica parado no console e não vai executar a reposta chamando o notebook
});

app.get("/produtos", (req, res, next) => {
  res.send({ name: "Notebook", price: 12343.45 }); //Isso vai converter para JSON
});

app.listen(port, () => {
  console.log(`Servidor rodando na paz dentro da porta: ${port}.`);
});
