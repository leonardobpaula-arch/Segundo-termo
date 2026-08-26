const entrada = require('readline-sync');

console.log("--- O verificador de votação---")

const nome = entrada.question("Qual seu nome: ");
const  datanascimento = entrada.questionInt("Quando você nasceu:");
const anoatual = newdate().getFullYear();

const idade = anoatual 


if (media >= 7) {
    console.log("Aprovado");
} else if (media >= 5 && media < 7) {
    console.log("Recuperação");
}else {
    console.log("Reprovado");
}