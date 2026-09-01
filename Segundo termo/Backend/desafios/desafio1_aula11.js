const entrada = require("readline-sync");

const nome = entrada.question("Qual e seu nome? ");
const nascimento = entrada.questionInt("Que ano voce nasceu? ");
const data = entrada.questionInt("Em que ano estamos? ");

const idade = (data - nascimento)

if (idade >= 16) {
    console.log(`${nome} tem direito ao voto`);
}
else{
    console.log("Sai daqui criança, você não tem direitos")
}