const schedule = require("node-schedule");

const task1 = schedule.scheduleJob("*/5* 15 * * 1", function() {
  console.log("Executando Tarefa 1!", new Date().getSeconds());
});

setTimeout(function() {
  task1.cancel();
  console.log("Cancelamento da task 1");
}, 2000);

const regra = new schedule.RecurrenceRule();
regra.dayOfWeek = [new schedule.Range(1, 5)];
regra.hour = 12;
regra.second = 30;

const task2 = schedule.scheduleJob(regra, function() {
  console.log("Executando tarefa 2!", new Date().getSeconds());
});
