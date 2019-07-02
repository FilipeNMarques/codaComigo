const anonimo = process.argv.indexOf("-a") !== -1;

console.log(anonimo);

if (anonimo) {
  process.stdout.write("Fala ai anônimo! :) \n");
  process.exit();
} else {
  process.stdout.write("Informe seu nome: ");
  process.stdin.on("data", data => {
    const nome = data.toSting().repalce("\n", "");
    process.stdout.write(`Fala ai ${nome}, beleza? \n`);
    process.exit();
  });
}
