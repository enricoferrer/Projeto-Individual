CREATE DATABASE MuayArt;

USE MuayArt;

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
    sobrenome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50)
);

select * from usuario;

create table quiz (
id INT auto_increment,
fkUsuario INT,
resultado varchar(45),
primary key (id, fkUsuario),
foreign key (fkUsuario) references usuario(id)
);

INSERT INTO usuario (nome, sobrenome, email, senha)
VALUES 
('Enrico', 'Ferrer', 'enrico@email.com', 'enrico123'),
('João', 'Silva', 'joao.silva@example.com', 'senha123'),
('Maria', 'Souza', 'maria.souza@example.com', 'senha456'),
('Pedro', 'Pereira', 'pedro.pereira@example.com', 'senha789'),
('Ana', 'Oliveira', 'ana.oliveira@example.com', 'senha012'),
('Carlos', 'Santos', 'carlos.santos@example.com', 'senha345'),
('Bruna', 'Gomes', 'bruna.gomes@example.com', 'senha678'),
('Diego', 'Ribeiro', 'diego.ribeiro@example.com', 'senha901'),
('Clara', 'Alves', 'clara.alves@example.com', 'senha234'),
('Fábio', 'Costa', 'fabio.costa@example.com', 'senha567'),
('Fernanda', 'Monteiro', 'fernanda.monteiro@example.com', 'senha890');

INSERT INTO quiz (fkUsuario, resultado)
VALUES
(1, "Muay Khao"),
(2, "Muay Dan"),
(3, "Muay Khao"),
(4, "Muay Fimeu"),
(5, "Muay Khao"),
(6, "Muay Fimeu"),
(7, "Muay Matt"),
(8, "Muay Matt"),
(9, "Muay Dan"),
(10, "Muay Dan"),
(11, "Muay Fimeu");
