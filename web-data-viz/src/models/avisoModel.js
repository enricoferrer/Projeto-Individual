// var database = require("../database/config");

// function listar() {
//     console.log("ACESSEI O AVISO  MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function listar()");
//     var instrucaoSql = `
//         SELECT 
//             a.idAviso AS idAviso,
//             a.titulo,
//             a.descricao,
//             a.fkUsuario,
//             u.idUsuario AS idUsuario,
//             u.nome,
//             u.email,
//             u.senha
//         FROM Aviso a
//             INNER JOIN Usuario u
//                 ON a.fkUsuario = u.idUsuario;
//     `;
//     console.log("Executando a instrução SQL: \n" + instrucaoSql);
//     return database.executar(instrucaoSql);
// }

// function pesquisarDescricao(texto) {
//     console.log("ACESSEI O AVISO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function pesquisarDescricao()");
//     var instrucaoSql = `
//         SELECT 
//             a.idAviso AS idAviso,
//             a.titulo,
//             a.descricao,
//             a.fkUsuario,
//             u.idUsuario AS idUsuario,
//             u.nome,
//             u.email,
//             u.senha
//         FROM Aviso a
//             INNER JOIN Usuario u
//                 ON a.fkUsuario = u.idUsuario
//         WHERE a.descricao LIKE '${texto}';
//     `;
//     console.log("Executando a instrução SQL: \n" + instrucaoSql);
//     return database.executar(instrucaoSql);
// }

// function listarPorUsuario(idUsuario) {
//     console.log("ACESSEI O AVISO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function listarPorUsuario()");
//     var instrucaoSql = `
//         SELECT 
//             a.idAviso AS idAviso,
//             a.titulo,
//             a.descricao,
//             a.fkUsuario,
//             u.idUsuario AS idUsuario,
//             u.nome,
//             u.email,
//             u.senha
//         FROM Aviso a
//             INNER JOIN Usuario u
//                 ON a.fkUsuario = u.idUsuario
//         WHERE u.id = ${idUsuario};
//     `;
//     console.log("Executando a instrução SQL: \n" + instrucaoSql);
//     return database.executar(instrucaoSql);
// }

// function publicar(titulo, descricao, idUsuario) {
//     console.log("ACESSEI O AVISO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function publicar(): ", titulo, descricao, idUsuario);
//     var instrucaoSql = `
//         INSERT INTO Aviso (titulo, descricao, fkUsuario) VALUES ('${titulo}', '${descricao}', ${idUsuario});
//     `;
//     console.log("Executando a instrução SQL: \n" + instrucaoSql);
//     return database.executar(instrucaoSql);
// }

// function editar(novaDescricao, idAviso) {
//     console.log("ACESSEI O AVISO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function editar(): ", novaDescricao, idAviso);
//     var instrucaoSql = `
//         UPDATE Aviso SET descricao = '${novaDescricao}' WHERE id = ${idAviso};
//     `;
//     console.log("Executando a instrução SQL: \n" + instrucaoSql);
//     return database.executar(instrucaoSql);
// }

// function deletar(idAviso) {
//     console.log("ACESSEI O AVISO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function deletar():", idAviso);
//     var instrucaoSql = `
//         DELETE FROM Aviso WHERE id = ${idAviso};
//     `;
//     console.log("Executando a instrução SQL: \n" + instrucaoSql);
//     return database.executar(instrucaoSql);
// }

// module.exports = {
//     listar,
//     listarPorUsuario,
//     pesquisarDescricao,
//     publicar,
//     editar,
//     deletar
// }
