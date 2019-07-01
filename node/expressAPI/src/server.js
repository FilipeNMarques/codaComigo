const port = 3003;
const express = require("express");
const bodyParser = require("body-parser");
const dataBase = require("./dataBase");

const app = express();

app.use(bodyParser.urlencoded({ extended: true }));

// app.get("/produtos", (req, res, next) => {
//   console.log("Passando pelo Middleware1");
//   next();
//   //Para ilustrar o middleware, passamos um aqui chamando essa info no console.
//   //Se não chamar o next ele fica parado no console e não vai executar a reposta chamando o notebook
// });

app.get("/produtos", (req, res, next) => {
  res.send(dataBase.getProdutos()); //Isso vai converter para JSON
});

app.get("/produto/:id", (req, res, next) => {
  res.send(dataBase.getProduto(req.params.id));
});

app.post("/produtos", (req, res, next) => {
  const produto = dataBase.salvarProduto({
    name: req.body.name,
    price: req.body.price
  });
  res.send(produto); // O resultado é um JSON file
});

app.post("/produtos/:id", (req, res, next) => {
  const produto = dataBase.salvarProduto({
    id: req.params.id,
    name: req.body.name,
    price: req.body.price
  });
  res.send(produto); // O resultado é um JSON file
});

app.delete("/produtos/:id", (req, res, next) => {
  const produto = dataBase.excluirProduto(req.params.id);
  res.send(produto); // O resultado é um JSON file
});

app.listen(port, () => {
  console.log(`Servidor rodando na paz dentro da porta: ${port}.`);
});
