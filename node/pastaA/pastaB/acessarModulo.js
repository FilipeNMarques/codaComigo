const moduloA = require("../../moduloA");
console.log(moduloA.ola);
const c = require("./pastaC/index");
console.log(c.ola2);
const http = require("http");
http
  .createServer((req, res) => {
    res.write("Bom dia pessoal!");
    res.end();
  })
  .listen(4000);
