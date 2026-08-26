const entrada = require("readline-sync");

console.log("===controle de qualidade===");

const pecas = [];

const quantidade = entrada.questionInt("Quantas pecas deseja registrar? ");

for (let i= 0; i < quantidade; i++){
    let peca = entrada.questionFloat(`Qual o peso desta peca ${i+1}: `);
    pecas.push(peca);
}
console.log("--- Resumo ---");
console.log(`Pecas registradas: ${pecas.join(" pecas | ")}`);
console.log(`Média das pecas: ${pecas / quantidade}`);