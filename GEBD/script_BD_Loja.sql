
CREATE DATABASE LOJA_CD;
use loja_Cd;

CREATE TABLE MUSICA (
	Cod_Musica int primary key,
	nome_Musica varchar (60),
	Duracao numeric(6,2)
);

INSERT INTO MUSICA (COD_MUSICA, NOME_MUSICA, DURACAO) VALUES (1, 'É o amor', 2.5);

CREATE TABLE AUTOR (
	cod_Autor int not null primary key,
	nome_Autor varchar (60)
);

INSERT INTO AUTOR (COD_AUTOR, NOME_AUTOR) VALUES ( 1, 'Zezé Di Camargo');

CREATE TABLE GRAVADORA (
	Cod_Gravadora int not null primary key auto_increment ,
	nome_gravadora varchar (60) null,
	end_gravadora varchar (60) null,
	tel_gravadora varchar (20) null,
	contato varchar(20) null,
	url_gravadora varchar (80)
);
INSERT INTO GRAVADORA (COD_GRAVADORA, NOME_GRAVADORA, END_GRAVADORA, TEL_GRAVADORA, CONTATO, URL_GRAVADORA) 
VALUES (1, 'EMI', 'R. TUPI', '42152115', 'MARIA', 'WWW.EMI.BR'); 

INSERT INTO GRAVADORA (NOME_GRAVADORA, END_GRAVADORA, TEL_GRAVADORA, CONTATO, URL_GRAVADORA) 
VALUES ('EMI', 'R. TUPI', '42152115', 'MARIA', 'WWW.EMI.BR'); 

select * from gravadora;

CREATE TABLE CD (
	cod_cd int not null primary key,
	cod_gravadora int not null,
	nome_CD varchar (60) null,
	preco_venda numeric(14, 2),
	data_lancamento datetime,
	cd_indicado int,
	foreign key (cod_gravadora) references gravadora (cod_gravadora),
	foreign key (cd_indicado) references CD (cod_CD)
);
select * From cd;
 
INSERT INTO CD (COD_CD, COD_GRAVADORA, NOME_CD, PRECO_VENDA, DATA_LANCAMENTO, CD_INDICADO) 
VALUES (1, 1, 'CANÇÕES DE AMOR', 5.90, NOW(), NULL); 

INSERT INTO CD (COD_CD, COD_GRAVADORA, NOME_CD, PRECO_VENDA, DATA_LANCAMENTO, CD_INDICADO) 
VALUES (2, 1, 'A VIDA É BELA', 7.90, NOW(), 1); 

update cd set cd_indicado = 2 where cod_cd = 1;

CREATE TABLE FAIXA (
	Cod_Musica int not null,
	cod_cd int not null,
	num_faixa int,
primary key (cod_musica, cod_cd),
foreign key (cod_musica) references musica (cod_musica),
foreign key (cod_cd) references CD (cod_cd)
);

INSERT INTO FAIXA (COD_MUSICA, COD_CD, NUM_FAIXA) VALUES (1, 1, 1);


CREATE TABLE MUSICA_AUTOR (
	Cod_Musica int not null,
	cod_Autor int not null, -- O VALOR COLOCADO COMO DEFAULT DEVE EXISTIR NA TABELA AUTOR
	Primary key (cod_Musica, cod_Autor),
	FOREIGN KEY (cod_Musica) REFERENCES Musica (cod_Musica),
	FOREIGN KEY (cod_Autor) REFERENCES Autor (cod_Autor)
);

INSERT INTO MUSICA_AUTOR (COD_MUSICA, COD_AUTOR) VALUES (1, 1); 