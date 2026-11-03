const fs = require('fs');

console.log("=== Sistema de registro de máquinas ===");

const maquinasIndustriais = [
    {id: 101, nome: "torno revolver", setor: "usinagem", opercional: false},
    {id: 102, nome: "furadeira de bancada", setor: "manutençao", operacional: false},
    {id: 103, nome: "prensa hidraulica 40T", setor: "estamparia", operacional: true},
];

const dadosParaGravar = JSON.stringify(maquinasIndustriais, null, 2);

const nomeDoArquivo = "maquinas.json";
fs.writeFileSync(nomeDoArquivo, dadosParaGravar);

console.log(`\nGravacao concluida com sucesso.`);
console.log(`Verifique o arquivo '${nomeDoArquivo} gerado.`);