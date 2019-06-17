console.log(module.exports === this);
console.log(module.exports === exports);

//Existem tem maneiras de exportar modulos
//Quando você não quer criar nemhum objeto novo, pode usar os exemplos abaixo

this.a = 1;
exports.b = 2;
module.exports.c = 3;

exports = null;
console.log(module.exports);

// Mas para exportar um obj novo, você precisa utilizar o 'module.exports', exemplo abaixo.

module.exports = {
  objNovo: true
};

console.log(module.exports);
