create database BDImovelC;

CREATE TABLE Estado (
sgestado char(2) PRIMARY KEY,
nmestado varchar(20)
);

INSERT INTO Estado (sgestado, nmestado) VALUES ('SP', 'São Paulo');
INSERT INTO Estado (sgestado, nmestado) VALUES ('RJ', 'Rio de Janeiro');


CREATE TABLE Cidade (
cdcidade integer PRIMARY KEY,
nmcidade varchar(20),
sgestado char(2),
FOREIGN KEY(sgestado) REFERENCES Estado (sgestado)
);

INSERT INTO Cidade VALUES (20, 'JANDIRA', 'SP');
INSERT INTO Cidade VALUES (30, 'BARUERI', 'SP');
INSERT INTO Cidade VALUES (40, 'CABO FRIO', 'RJ');

CREATE TABLE Bairro (
	cdbairro integer PRIMARY KEY,
	nmbairro varchar(20),
	cdcidade integer,
FOREIGN KEY(cdcidade) REFERENCES Cidade (cdcidade)
);

insert into bairro (cdbairro, nmbairro, cdcidade) values (1, 'Engenho', 30);

CREATE TABLE Imovel (
cdimovel integer PRIMARY KEY,
dsimovel varchar(300),
nmendereco varchar(40),
vlpreco decimal(16,2),
nrareautil decimal(10,2),
nrareatotal decimal(10,2),
nrofertas integer,
dtlancto datetime,
stvendido char(1),
imovel_indicado integer,
cdbairro integer,
cdvendedor integer,
FOREIGN KEY(cdbairro) REFERENCES Bairro (cdbairro)
);

INSERT INTO Imovel( cdimovel, dsimovel, nmendereco, vlpreco, nrareautil, 
nrareatotal, nrofertas, dtlancto, stvendido, imovel_indicado, cdbairro, 
cdvendedor) VALUES (200, 'APTO 2DORMS COM GARAGEM', 'R. PAULISTA, 10', 500000, 350, 500, 5, NOW(), 'N', NULL, 1, 10);


CREATE TABLE Vendedor (
cdvendedor integer PRIMARY KEY,
nmvendedor varchar(40),
nmendereco varchar(100),
nrcpf varchar(20),
telvendedor varchar(20),
email varchar(80)
);

insert into vendedor (cdvendedor, nmvendedor, nmendereco, nrcpf, telvendedor, email) 
values (10, 'Maria', 'R. Felipe, 100', '252', '41111', 'suelane@gmail.com.br');


CREATE TABLE Comprador (
cdcomprador integer PRIMARY KEY,
nmcomprador varchar(40),
nmendereco varchar(40),
email varchar(80),
telcomprador varchar(20),
nrcpf varchar(20),
cdbairro integer,
FOREIGN KEY(cdbairro) REFERENCES Bairro (cdbairro)
);

INSERT INTO Comprador VALUES (10, 'PABLO SILVA', 'R.ITU, 120', 'PABLO@UOL.COM.BR', 
'4241441', '225555555', 1);

CREATE TABLE Faixa_Imovel (
cdfaixa integer PRIMARY KEY,
nmfaixa varchar(20),
vlminimo decimal(14,2),
vlmaximo decimal(14,2)
);

insert into faixa_imovel (cdfaixa, nmfaixa, vlminimo, vlmaximo) values (1, 'A', 1000000, 5000000);

CREATE TABLE oferta (
cdcomprador integer,
cdimovel integer,
dtoferta datetime,
vloferta numeric(16,2),
PRIMARY KEY(cdcomprador,cdimovel),
FOREIGN KEY(cdimovel) REFERENCES Imovel (cdimovel)
);

insert into oferta (cdcomprador, cdimovel, dtoferta, vloferta) values (10, 200, now(), 1500000);


ALTER TABLE Imovel ADD FOREIGN KEY(imovel_indicado) REFERENCES Imovel (cdimovel);
ALTER TABLE Imovel ADD FOREIGN KEY(cdvendedor) REFERENCES Vendedor (cdvendedor);
ALTER TABLE oferta ADD FOREIGN KEY(cdcomprador) REFERENCES Comprador (cdcomprador);

-- LISTA 5 EX 1 

INSERT INTO Comprador VALUES (20, 'LUANA', 'R.Cecilia, 18', 'LUANA@UOL.COM.BR', 
'6754321', '12345874', 1);

-- LISTA 5 EX 2

SELECT * FROM VENDEDOR;

insert into vendedor (cdvendedor, nmvendedor, nmendereco, nrcpf, telvendedor, email) 
values (20, 'Samuel Silveira', 'R. Jose de alecar, 100', '252', '41111', 'samuel@gmail.com.br');
UPDATE VENDEDOR SET nmvendedor = 'Carlos  Santos' WHERE cdvendedor = 20;

-- LISTA 5 EX 3 

SELECT * FROM Imovel;

SELECT * FROM Imovel WHERE nrareatotal > 300 AND vlpreco < 250;

-- LISTA 5 EX 4 

SELECT * FROM  nmcomprador , nmendereco FROM comprador WHERE nmendereco LIKE '%ja%';

-- LISTA 5 EX 5 

SELECT dsimovel, nrareautil, nrareatotal FROM imovel ORDER BY dsimovel DESC, nrareautil DESC,nrareatotal DESC;

-- LISTA 5 EX 6 

UPDATE oferta SET vloferta = 45.000.00 WHERE cdimovel = 400;

-- LISTA 5 EX 7 

SELECT MIN(vlpreco) AS maior_preco FROM  imovel;
SELECT MAX(vlpreco) AS menor_preco FROM imovel;

-- LISTA 5 EX 8 

SELECT sum (vlpreco) AS media_preco FROM imovel WHERE stvendido = 'S';
SELECT * FROM imovel

-- LISTA 5 EX 9

SELECT  count(cdimovel) total_imovel FROM imovel WHERE stvendido = 'n';

-- LISTA 5 EX 10 

DELETE FROM  vendedor WHERE cdvendedor BETWEEN 120 AND 500;

-- LISTA 5 EX 11 

insert into vendedor (cdvendedor, nmvendedor, nmendereco, nrcpf, telvendedor, email) 
values (30, 'patricia ribeiro' , 'R. Felipe, 510', '724', '616641', 'patricia@gmail.com.br');

UPDATE vendedor SET nmvendedor = 'josefa' WHERE cdvendedor = 30;
UPDATE vendedor SET nmendereco = 'R. mirante , 100' WHERE cdvendedor = 30;

-- LISTA 5 EX 12

UPDATE OFERTA SET vloferta = vloferta -4000 ;
SELECT * FROM OFERTA;
-- LISTA 5 EX 13

SELECT  * FROM CIDADE;

DELETE FROM CIDADE WHERE nmcidade = 'JANDIRA';
ALTER TABLE BAIRRO DROP FOREIGN KEY BAIRRO_IBFK_1;
DELETE FROM CIDADE WHERE nmcidade = 'BARUERI';

-- LISTA 5 EX 14

 