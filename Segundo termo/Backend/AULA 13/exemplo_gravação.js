const fs = require('fs');

console.log("=== Sistema de Persistecia: Registro de Maquinas ===");

const maquinasIndustriais = [
    {id: 101, nome: "torno mecanico universal", setor: "Usinagem", operacional: true},
    {id: 102, nome: "Fresadora ferramenteira", setor: "Usinagem", operacional: false},
    {id: 103, nome: "Prensa hidraulica 50T", setor: "Estamparia", operacional: true},
    {id: 104, nome: "compressor", setor: "Utilidades", operacional: false}
]
const dadosParaGravar = JSON.stringify(maquinasIndustriais, null, 2);

const nomeDoArquivo = "maquinas.json";
fs.writeFileSync(nomeDoArquivo, dadosParaGravar);
console.log(`\nGravacao concluida com sucesso.`);
console.log(`Verifique o arquivo '${nomeDoArquivo} getRandomValues.`)