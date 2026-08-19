const entrada = require('readline-sync');

console.log("--- Sistema de analise de credito ---");

const nome = entrada.question("Nome do cliente");
const idade = entrada.questionInt("Idade: ");
const renda = entrada.questionFloat("Renda mensal: ");
const temImovel = entrada.keyInYNStrict("Possui imovel proprio?");

if (idade >=18 && (renda >= 2500 || temImovel === true)){
    console.log(`\nParabens, ${nome}! Seu credito foi aprovado!`);    
}else {
    console.log(`\nSinto muito, ${nome}. Seu credito foi NEGADO.`);
}