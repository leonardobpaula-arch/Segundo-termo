const entrada = require("readline-sync");

console.log("----------");
console.log(" Sistema de classificação: NATAÇÃO");
console.log("----------\n");

const nome = entrada.question("Nome do atleta: ")
const idade = entrada.questionInt("Idade do atleta: ")

console.log(`\nAtleta: ${nome}`);

if (idade < 5){
    console.log("Situação: muito jovem para competição");
}
else if (idade >=5 && idade <=10){
    console.log("Categoria: infantil 👼");
}
else if (idade >=11 && idade <=17){
    console.log("Categoria: juvenil 👦");
}
else if (idade >=18 && idade <=60){
    console.log("Categoria: adulto 👨‍🦰");
}
else{
    console.log("Categoria: sênior 👴");
}
console.log("----------");