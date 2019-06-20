console.log(this === module.exports);
console.log(this === exports);

function logThis() {
  console.log("Dentro de uma Function...");
  console.log(this === exports);
}

logThis();

// Importante lembrar que só fora de funções o "this" aponta para o module.exports,
// dentro de funções ele aponta para GLOBAL!
