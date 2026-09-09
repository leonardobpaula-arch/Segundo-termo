const entrada = require('readline-sync');

const peso = entrada.questionInt("Quanto pesa a sua peca? ");

if (peso >= 95 && peso <= 105) {
    console.log("PECA APROVADA");
    console.log(`Seu peso é de ${peso}`);
}

else{
    console.log("PECA REPROVADA");
    console.log(`Seu peso é de ${peso}`)
}