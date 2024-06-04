CREATE DATABASE MuayArt;

USE MuayArt;


CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
    sobrenome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50)
);

/*CREATE TABLE aviso (
	id INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(100),
	descricao VARCHAR(150),
	fk_usuario INT
);

/*create table aquario (
em nossa regra de negócio, um aquario tem apenas um sensor 
	id INT PRIMARY KEY AUTO_INCREMENT,
	descricao VARCHAR(300),
	fk_empresa INT,
	FOREIGN KEY (fk_empresa) REFERENCES empresa(id)
);*/

/* esta tabela deve estar de acordo com o que está em INSERT de sua API do arduino - dat-acqu-ino */

/*create table medida (
	id INT PRIMARY KEY AUTO_INCREMENT,
	dht11_umidade DECIMAL,
	dht11_temperatura DECIMAL,
	luminosidade DECIMAL,
	lm35_temperatura DECIMAL,
	chave TINYINT,
	momento DATETIME,
	fk_aquario INT,
	FOREIGN KEY (fk_aquario) REFERENCES aquario(id)
);

insert into empresa (razao_social, cnpj) values ('Empresa 1', '00000000000000');
insert into aquario (descricao, fk_empresa) values ('Aquário de Estrela-do-mar', 1);
*/
select * from usuario;

create table quiz (
id INT auto_increment,
fkUsuario INT,
resultado varchar(45),
primary key (id, fkUsuario),
foreign key (fkUsuario) references usuario(id)
);

-- Inserindo a primeira linha
INSERT INTO usuario (nome, sobrenome, email, senha)
VALUES 
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
(10, "Muay Dan");
