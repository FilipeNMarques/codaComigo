//Middleware pattern (chain of responsibility)

//Nesse exemplo, 'ctx' é o objeto responsavel por carregar a informação de um passo para o outro
const passo1 = (ctx, next) => {
  ctx.valor1 = "mid1";
  next();
};

const passo2 = (ctx, next) => {
  ctx.valor2 = "mid2";
  next();
};

const passo3 = ctx => (ctx.valor3 = "mid3");

const exec = (ctx, ...middlewares) => {
  const execPasso = index => {
    middlewares &&
      index < middlewares.length &&
      middlewares[index](ctx, () => execPasso(index + 1));
  };
  execPasso(0);
};

const ctx = {};
exec(ctx, passo1, passo2, passo3);
console.log(ctx);
