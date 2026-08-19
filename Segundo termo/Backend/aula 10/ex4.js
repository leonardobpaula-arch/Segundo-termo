const entrada = require("readline-sync");

console.log("=== REGISTRO DE TEMPERATURAS ===");

const temperaturas = [];

const quantidade = entrada.questionInt("Quantas temperaturas deseja registrar? ");

for (let i= 0; i < quantidade; i++){
    let temperatura = entrada.questionFloat(`temperatura ${i+1}: `);
    temperaturas.push(temperatura);
}
console.log("\n--- RELATÓRIO ---");
console.log(`Temperaturas registradas: ${temperaturas.join(" °c | ")} °c`); 

console.log(`Primeiro registro: ${temperaturas[0]}°c`);
console.log(`Último resgistro: ${temperaturas[temperaturas.length - 1]}°c`);