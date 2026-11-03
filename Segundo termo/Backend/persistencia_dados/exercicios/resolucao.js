const fs = require('fs');

console.log("=== Sistema de persistencia: leitura de maquinas ===");

const nomeDoArquivo = "maquinas.json";

if(!fs.existsSync(nomeDoArquivo)) {
    console.error(`Erro: o arquivo '${nomeDoArquivos}' nao foi encontrado`);
};

const conteudoTexto = fs.readFileSync(nomeDoArquivo, 'utf-8');

const maquinasRecuperadas = JSON.parse(conteudoTexto);

function buscarPorId(maquinas, id) {
    return maquinas.find((maquina) => maquina.id === id);
}

function filtrarPorStatus(maquinas, status){
    return maquinas.filter((maquina) => maquina.status === status);
}

console.log("Dados carregados com sucesso:\n");
console.table(maquinasRecuperadas);

console.log(`\nTotal de maquinas cadastradas: ${maquinasRecuperadas.length}`);
console.log(`Primeira maquina da lista: ${maquinasRecuperadas[0].nome}`);

function executar() {
    console.log(`\n=== maquinas em manutencao ===`);
    console.table(buscarPorId(maquinasRecuperadas, 3) ?? 'maquina nao encontrada'); 
    
    console.log(`\n=== maquinas em manutencao ===`);
    console.table(filtrarPorStatus(maquinasRecuperadas, 'manutencao'))
}
executar()