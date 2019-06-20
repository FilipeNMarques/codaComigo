const ContadorA = require("./instanciaUnica");
const ContadorB = require("./instanciaUnica");
const ContadorC = require("./instanciaNova")(); //Esse "()" no final do require é para invocar a factory funcion
const ContadorD = require("./instanciaNova")(); //Esse "()" no final do require é para invocar a factory funcion

ContadorA.inc();
ContadorA.inc();
console.log(ContadorA.valor, ContadorB.valor);

ContadorC.inc();
ContadorC.inc();
console.log(ContadorC.valor, ContadorD.valor);
