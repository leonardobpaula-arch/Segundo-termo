const entrada = require('readline-sync');

function calculo (pecas,horas) {
    return (pecas * horas)
}

const quantidade = entrada.questionInt("Quantas pecas sao produzidas por hora? ");
const horas = entrada.questionInt("Quantas horas duram o turno? ");
const total = calculo(quantidade, horas);

console.log(`A producao por hora foi de: ${quantidade} `);
console.log(`O tempo dos turnos foi de: ${horas} `);
console.log(`A producao total foi de: ${total} `)