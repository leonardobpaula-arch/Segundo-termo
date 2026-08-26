const entrada = require(`readline-sync`);

const velocidade = entrada.question("Qual sua velocidade: ");

if (velocidade > 80) {
    console.log("Multado meliante safado");
}else if (velocidade <= 80 ){
    console.log("Pode seguir")
}