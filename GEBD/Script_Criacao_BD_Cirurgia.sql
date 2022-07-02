create database Cirurgia 

create table sala (

	num_sala int not null primary key, 
	andar varchar(1) null, 
	ala_centro varchar (25) null
);


create table especialidade (
	cod_especialidade int not null PRIMARY KEY, 
	desc_especialidade varchar (50) null
);


create table qualificacao_sala (
	num_sala int not null,
	cod_especialidade int not null, 
	PRIMARY KEY (num_sala, cod_especialidade),
	FOREIGN KEY (num_sala) REFERENCES Sala (num_sala)
);

create table Paciente(pacientepacientepaciente
	num_internacao int not null Primary Key, 
	CPF varchar (11), 
	nome_paciente varchar(60), 
	endereco_paciente varchar (100),
	sexo char(1), 
	data_nasc varchar(8), 
	profissao varchar (50)
);
INSERT INTO  paciente values (1, 'Ana Maria', 'Pedro', 'Luiz Felipe', 'Dionatas', 'Paulo', 'Luana', 'Rosa');

create table pais (
	cod_pais int not null PRIMARY KEY, 
	nome_pais varchar (60)
);
INSERT INTO pais  values (1, 'brasil');

create table estado (
	cod_estado varchar(2) not null primary key, 
	nome_estado varchar(60), 
	cod_pais int not null, 
FOREIGN KEY (cod_pais) REFERENCES pais (cod_pais)
);
INSERT INTO estado values (1, 'são paulo', 1);

create table cidade (
	cod_cidade int not null Primary key, 
	nome_cidade varchar (60), 
	cod_estado varchar(2), 
FOREIGN KEY (cod_estado) references estado (cod_estado)
);
INSERT INTO cidade values (1, 'Barueri', 1);

create table Bairro (
	cod_bairro int not null Primary key, 
	nome_bairro varchar(60) null, 
	cod_cidade int not null, 
	Foreign key (cod_cidade) references cidade (cod_cidade)
);
INSERT INTO bairro  (cod_bairro, nome_bairro, cod_cidade) values (2, 'jardim belval',1);

create table medico(
	CRM int not null PRIMARY KEY, 
	Nome_Medico varchar (60) null, 
	endereco varchar(100),
	cod_bairro int not null, 
	cod_especialidade  int not null, 
	salario numeric(6,2), 
	FOREIGN KEY (cod_bairro) REFERENCES Bairro (cod_bairro), 
	FOREIGN KEY (cod_especialidade) REFERENCES Especialidade (cod_especialidade)
);
INSERT INTO medico (CRM, Nome_Medico, endereco, cod_bairro, cod_especialidade, salario) values (011, 'MARCOS FERREIRA', 'Mirante das flores', 2, 1, 9000);

create table cirurgia (
	CRM int not null, 
	num_internacao int not null, 
	num_sala int not null, 
	data_cirurgia varchar(8) not null, 
	hora_cirurgia varchar(6) not null, 
	PRIMARY KEY (CRM, num_internacao, num_sala, data_cirurgia, hora_cirurgia),
	FOREIGN KEY (num_internacao) REFERENCES Paciente (num_internacao),
	FOREIGN KEY (CRM) REFERENCES  medico (crm),
	FOREIGN KEY (num_sala) REFERENCES Sala (num_sala)
);
INSERT INTO  cirurgia (CRM, num_internacao, num_sala, data_cirurgia, hora_cirurgia) values (010, 15, 05, 26092019, 20);

create table material_medicamento (
	cod_produto int not null PRIMARY KEY, 
	nome_produto varchar(60) null, 
	principio_ativo varchar(50), 
	unidade char(2), 
	saldo_estoque decimal(5,2)
);
INSERT INTO  material_medicamento (cod_produto, nome_produto, principio_ativo, unidade, saldo_estoque) values ( 212, 'faixa', 'ferimentos', 13, 10);

create table consome (
	num_consumo int not null, 
	cod_produto int not null, 
	CRM int not null, 
	num_internacao int not null, 
	num_sala int not null, 
	data_cirurgia varchar(8) not null, 
	hora_cirurgia varchar(6) not null, 
	qtde int, 
	PRIMARY KEY (num_consumo, cod_produto), 
	FOREIGN KEY (CRM, num_internacao, num_sala, data_cirurgia, hora_cirurgia) references cirurgia (CRM, num_internacao, num_sala, data_cirurgia, hora_cirurgia),
	FOREIGN KEY (cod_produto) REFERENCES material_medicamento (cod_produto)
);
INSERT INTO consome (num_consumo, cod_produto, CRM, num_internacao, num_sala, data_cirurgia, hora_cirurgia, qtde) values (1,1,1,1,1, '20190110', '176');

-- EX 2 
DROP DATABASE controle_cirurgia;

-- EX 3 
DELETE FROM  especialiade values (2, 'Ortopedia');

-- EX 4  
delete from paciente where nome like 'F%';

-- EX 5
UPDATE medico  SET nome_medico = 'MARCOS FERREIRA', salario  = 9000 WHERE crm  = 200;

-- EX 6
SELECT * FROM cirurgia  WHERE (crm = 2 OR crm= 3)  AND num_sala BETWEEN 100 AND  150 ORDER BY DATA_CIRURGIA DESC; 

-- EX 7
SELECT MAX(saldo_estoque) maior_estoque FROM material_medicamento WHERE cod_produto  BETWEEN 2 AND 30 OR unidade = 'ML';

-- EX 8
SELECT nome_medico, desc_especialidade FROM medico inner join especialidade B on (A.cod_especialidade = B.cod_especialidade);

-- EX 9  
SELECT COUNT(nome_produto) AS total_produto FROM material_medicamento;

-- EX 10
DELETE FROM medico WHERE salario > 6000 AND cod_especialidade = 200;

-- EX 11
UPDATE especialidade SET desc_especialidade = 'PEDIATRA' WHERE cod_especialidade = 30;

-- EX 12
SELECT A.nome, C.data_cirurgia,  C.hora_cirurgia FROM paciente INNER JOIN cirurgia ON ( paciente.num_internacao = cirurgia.num_internacao);

-- EX 13
SELECT data_cirurgia, nome_medico FROM medico A LEFT OUTER JOIN cirurgia C on A.crm; 

-- EX 14
SELECT nome_produto, cirurgia.data_cirurgia, cirurgia.hora_cirurgia
FROM material_medicamento INNER JOIN consome ON (consome.cod_produto= material_medicamento.cod_produto)

-- EX 15 
SELECT crm, Count(crm) total_medico from cirurgia group by crm;

-- EX 16 
select nome_medico, nome_cidade
from medico inner join bairro on medico.cod_bairro= bairro.cod_bairro)
			inner join cidade on (bairro.cod

