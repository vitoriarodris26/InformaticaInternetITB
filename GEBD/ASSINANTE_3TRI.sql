CREATE DATABASE ASSINANTE2C
USE ASSINANTE2C;
DROP TABLE ASSINATE;

CREATE TABLE RAMO_ATIVIDADE(
	CD_RAMO INT PRIMARY KEY,
    DS_RAMO VARCHAR (50)
);
INSERT INTO RAMO_ATIVIDADE (CD_RAMO,DS_RAMO) VALUES (1,'RAMO1');

CREATE TABLE MUNICIPIO(
	CD_MUNICIPIO INT PRIMARY KEY,
    DS_MUNICIPIO VARCHAR(50)   
);
INSERT INTO MUNICIPIO (CD_MUNICIPIO, DS_MUNICIPIO) VALUES (1,'MUNICIPIO1');

CREATE TABLE TIPO_ASSINANTE(
	CD_TIPO INT PRIMARY KEY,
    DS_TIPO VARCHAR (50)
);
INSERT INTO TIPO_ASSINANTE (CD_TIPO,DS_TIPO) VALUES (1,'TIPO1');

DROP TABLE ASSINANTE
CREATE TABLE ASSINANTE (
	CD_ASSINANTE INT PRIMARY KEY,
    NM_ASSINANTE VARCHAR(60),
    CD_RAMO INT,
    CD_TIPO INT,
    FOREIGN KEY (CD_RAMO) REFERENCES RAMO_ATIVIDADE (CD_RAMO),
    FOREIGN KEY (CD_TIPO) REFERENCES TIPO_ASSINANTE (CD_TIPO)
);
INSERT INTO ASSINANTE (CD_ASSINANTE, NM_ASSINANTE, CD_RAMO, CD_TIPO) VALUES (1,'ASSINANTE1',1 ,1);

CREATE TABLE ENDEREÇO (
	CD_ENDERECO INT PRIMARY KEY,
    DS_ENDERECO VARCHAR (50),
    COMPLEMENTO VARCHAR (50),
    BAIRRO VARCHAR (20),
    CEP DOUBLE,
    CD_MUNICIPIO INT,
    CD_ASSINANTE INT,
	FOREIGN KEY (CD_MUNICIPIO) REFERENCES MUNICIPIO (CD_MUNICIPIO),
	FOREIGN KEY (CD_ASSINANTE) REFERENCES ASSINANTE (CD_ASSINANTE)
);
INSERT INTO ENDEREÇO (CD_ENDERECO, DS_ENDERECO, COMPLEMENTO, BAIRRO, CEP, CD_MUNICIPIO,CD_ASSINANTE) VALUES (1 'ENDERECO1','COMPLEMENTO1', 'BAIRRO1',123458,1,1);

CREATE TABLE TELEFONE(
	CD_FONE INT PRIMARY KEY,
    DDD DOUBLE,
    N_FONE DOUBLE,
    CD_ENDERECO INT,
    FOREIGN KEY (CD_ENDERECO) REFERENCES ENDEREÇO (CD_ENDERECO)
);
INSERT INTO TELEFONE (CD_FONE, DDD, N_FONE ,CD_ENDERECO) VALUES (11, 11, 53130, 1);

-- 4 a)
SELECT NM_ASSINANTE, DS_ENDERECO,N_FONE
FROM ASSINANTE INNER JOIN ENDEREÇO ON (ASSINANTE.CD_ASSINANTE = ENDEREÇO.CD_ASSINANTE)
				INNER JOIN TELEFONE ON (ENDEREÇO.CD_ENDERECO = TELEFONE.CD_ENDERECO);
                
-- b)
SELECT RAMO_ATIVIDADE.DS_RAMO, ASSINANTE.NM_ASSINANTE
FROM RAMO_ATIVIDADE JOIN ASSINANTE ON (ASSINANTE.CD_RAMO = RAMO_ATIVIDADE.CD_RAMO) ORDER BY DS_RAMO, NM_ASSINANTE;

-- c) 
SELECT NM_ASSINANTE, DS_TIPO 
FROM ASSINANTE INNER JOIN TIPO_ASSINANTE ON (ASSINANTE.CD_TIPO = TIPO_ASSINANTE.CD_TIPO) 
INNER JOIN ENDEREÇO ON(ASSINANTE.CD_ASSINANTE= ENDEREÇO.CD_ASSINANTE)
INNER JOIN MUNICIPIO ON (ENDEREÇO.CD_MUNICIPIO= MUNICIPIO.CD_MUNICIPIO) WHERE DS_TIPO= 'RESIDENCIAL' AND DS_MUNICIPIO = 'PELOTAS';


-- d)
SELECT NM_ASSINANTE, COUNT(N_FONE) AS NUM_TELE
FROM ASSINANTE INNER JOIN ENDEREÇO ON (ASSINANTE.CD_ASSINANTE = ENDEREÇO.CD_ASSINANTE)
				INNER JOIN TELEFONE ON (ENDEREÇO.CD_ENDERECO = TELEFONE.CD_ENDEREÇO) GROUP BY NM_ASSINANTE HAVING  NUM_TELE > 1;

-- E) 
SELECT NM_ASSINANTE, N_FONE, DS_TIPO
FROM TELEFONE INNER JOIN ENDEREÇO ON (TELEFONE.CD_ENDERECO = ENDEREÇO.CD_ENDERECO)
		INNER JOIN ASSINANTE ON (ENDEREÇO.CD_ASSINANTE = ASSINANTE.CD_ASSINANTE)
		INNER JOIN MUNICIPIO ON (ENDEREÇO.CD_MUNICIPIO = MUNICIPIO.CD_MUNICIPIO)
        INNER JOIN TIPO_ASSINANTE ON (TIPO_ASSINANTE.CD_TIPO = ASSINANTE.CD_TIPO) WHERE DS_TIPO= 'COMERCIAL' AND  DS_MUNICIPIO = 'NATAL' OR DS_MUNICIPIO = 'JOÃO CÂMARA';
                

                
                
                