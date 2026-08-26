const entrada = require("readline-sync");


const idade = entrada.questionInt("Quantos anos voce tem: ")
const autorização = entrada.question("Voce possui autorizacao: ")
const professor = entrada.question("Voce esta acompanhado de um professor: ")

if ( 
(idade >=16 && autorização === "sim") ||
 professor === "sim"
){
    console.log("Acesso liberado");
}
else{
    console.log("Acesso negado")
}