const alunos = ["Ana", "Bruno", "Carlos", "Enzo"];

console.log("Lista de alunos: ");

console.log(`Primeiro aluno: ${alunos[0]}`);
console.log(`Segundo aluno: ${alunos[1]}`);
console.log(`Quantidade de alunos: ${alunos.length}`);

alunos.push("Cecília");
alunos.push("Leona");
alunos.splice(3,1)

console.log(alunos);
console.log(`Segundo aluno: ${alunos[2]}`);
console.log(`Último aluno: ${alunos.length - 1}`);