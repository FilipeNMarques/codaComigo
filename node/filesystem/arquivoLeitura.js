const fs = require("fs");

// const caminho = __dirname + "/arquivo.json";

// //Lendo arquivos de forma síncrona (Não é a forma mais usual, porque trava o eventloop para resolver essa cahamada)
// const conteudo = fs.readFileSync(caminho, "utf-8");
// console.log(conteudo);

// //Lendo de froma assincrona
// fs.readFile(caminho, "utf-8", (err, conteudo) => {
//   const config = JSON.parse(conteudo);
//   console.log(`${config.db.host}:${config.db.port}`);
// });

// Existe uma forma mais simples de ler arquivos json

const config = require("./arquivo.json");

console.log(config.db);

//Leitura de pastas
fs.readdir(__dirname, (err, arquivos) => {
  console.log("Lendo arquivos da pasta..");
  console.log(arquivos);
});
