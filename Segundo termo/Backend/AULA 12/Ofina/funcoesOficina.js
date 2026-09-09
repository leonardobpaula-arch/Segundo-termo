function calcularOrcamento(precoPeca, horasTrabalho) {
    const valorHora = 85.00;
    const totalMaodeObra = horasTrabalho * valorHora;
    return precoPeca + totalMaodeObra;
}

function verificarGarantia(meses) {
    if (meses <= 3) {
        return "Dentro da garantia"
    }else {
        return "Garantia expirada"
    }
}

function ValorComDesconto(valorTotal) {
    return valorTotal * 0.8;
}

module.exports = {
    calcularOrcamento,
    verificarGarantia,
    ValorComDesconto
}