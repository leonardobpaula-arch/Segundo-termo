const entrada = require('readline-sync');

const material = entrada.question("Qual material voce deseja? ");
const quantidade = entrada.questionInt("Quanto voce deseja comprar? ");
const valor = entrada.questionFloat("Quanto vale cada unidade deste produto? ");

const total = (quantidade * valor);

console.log(`${quantidade} unidades de ${material} por ${valor.toFixed(2)} devem custar ${total.toFixed(2)}`);