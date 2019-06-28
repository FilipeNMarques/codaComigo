const port = 3003;
const express = require("express");
const dataBase = require("./dataBAse");

const app = express();

app.get("/produtos", (req, res, next) => {
  console.log("Passando pelo Middleware1");
  next();
  //Para ilustrar o middleware, passamos um aqui chamando essa info no console.
  //Se não chamar o next ele fica parado no console e não vai executar a reposta chamando o notebook
});

app.get("/produtos", (req, res, next) => {
  res.send(dataBase.getProdutos()); //Isso vai converter para JSON
});

app.get("/produto/:id", (req, res, next) => {
  res.send(dataBase.getProduto(req.params.id));
});

app.post("/produtos", (req, res, next) => {
  const produto = dataBase.salvarProduto({
    nome: req.body.name,
    price: req.body.price
  });
  res.send(prduto); // O resultado é um JSON file
});

app.listen(port, () => {
  console.log(`Servidor rodando na paz dentro da porta: ${port}.`);
});
