const entrada = require('readline-sync');

const temperatura = entrada.questionInt("Qual a temperatura atual? ");

if (temperatura <= 60){
    console.log("situacao: NORMAL");
}

else if (temperatura >=61 && temperatura <= 80){
    console.log("situacao: ATENCAO");
}

else {
    console.log("situacao: CRITICA")
}