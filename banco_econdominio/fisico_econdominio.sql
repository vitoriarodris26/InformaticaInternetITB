-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE tipo_acesso (
id_tipo_acesso INTEGER PRIMARY KEY,
nome_tipo_acesso VARCHAR(90),
cod_status_tipo_acesso INTEGER
)

CREATE TABLE condomínio (
tipo_condo INTEGER,
num_condo NUMERIC(10),
compl_condo VARCHAR(100 ),
id_condo INTEGER PRIMARY KEY,
nome_condo VARCHAR(100),
cep_condo DECIMAL(8),
cod_status_condo INTEGER,
id_usu INTEGER
)

CREATE TABLE Unidade (
nome_unidade VARCHAR(100),
cod_unidade INTEGER PRIMARY KEY,
cod_status_unidade INTEGER,
localizacao_unidade VARCHAR(100 ),
id_condo INTEGER,
FOREIGN KEY(id_condo) REFERENCES condomínio (id_condo)
)

CREATE TABLE Usuario_Unidade (
cod_unidade INTEGER,
id_usu INTEGER,
PRIMARY KEY(cod_unidade,id_usu),
FOREIGN KEY(cod_unidade) REFERENCES Unidade (cod_unidade)
)

CREATE TABLE visitas_zelador (
id_usu_zelador INTEGER,
id_usu_morador INTEGER,
id_visita INTEGER,
desc_visita VARCHAR(200),
data_visita SMALLDATETIME,
cod_status_visita INTEGER,
PRIMARY KEY(id_usu_zelador,id_usu_morador)
)

CREATE TABLE ocorrencias (
id_ocorr INTEGER PRIMARY KEY,
desc_ocorr VARCHAR(40),
dt_hr_ocorr SMALLDATETIME,
tipo_ocorr VARCHAR(30),
cod_status_ocorr INTEGER,
id_usu INTEGER
)

CREATE TABLE eventos (
hr_ini_evento SMALLDATETIME,
hr_fim_evento SMALLDATETIME,
nome_evento VARCHAR(100),
id_evento INTEGER PRIMARY KEY,
local_evento VARCHAR(100),
cod_status_evento INTEGER,
id_tipo_evento INTEGER,
id_usu INTEGER
)

CREATE TABLE Usuario (
id_usu  INTEGER PRIMARY KEY,
nome_usu VARCHAR(80),
cpf_usu NUMERIC(10),
senha_usu VARCHAR(20 ),
email_usu VARCHAR(100 ),
cod_status_usu VARCHAR(10),
id_tipo_acesso INTEGER,
FOREIGN KEY(id_tipo_acesso) REFERENCES tipo_acesso (id_tipo_acesso)
)

CREATE TABLE avisos (
id_aviso INTEGER PRIMARY KEY,
titulo_aviso VARCHAR(25),
dt_hr_aviso SMALLDATETIME,
desc_aviso VARCHAR(10),
cod_status_aviso INTEGER,
id_usu INTEGER,
FOREIGN KEY(id_usu) REFERENCES Usuario (id_usu)
)

CREATE TABLE reservas (
desc_reserva VARCHAR(100 ),
cod_status_reserva INTEGER,
hr_ini_reserva SMALLDATETIME,
data_reserva SMALLDATETIME,
hr_fim_reserva SMALLDATETIME,
id_reserva INTEGER PRIMARY KEY,
local_reserva VARCHAR(100),
id_evento INTEGER,
id_tipo_reserva INTEGER,
id_usu INTEGER,
FOREIGN KEY(id_evento) REFERENCES eventos (id_evento),
FOREIGN KEY(id_usu) REFERENCES Usuario (id_usu)
)

CREATE TABLE tipo_reservas (
id_tipo_reserva INTEGER PRIMARY KEY,
nome_tipo_reserva VARCHAR(30),
cod_status_tipo_reserva INTEGER
)

CREATE TABLE carona (
assentos_disp_caro NUMERIC(4),
desc_trajeto_caro VARCHAR(80),
desc_hr_ini_fim_caro SMALLDATETIME,
cod_status_caro INTEGER,
cod_caro INTEGER PRIMARY KEY,
id_usu_oferece INTEGER,
FOREIGN KEY(id_usu_oferece) REFERENCES Usuario (id_usu)
)

CREATE TABLE Usuario_Aceita_Carona (
id_usu INTEGER,
cod_caro INTEGER,
PRIMARY KEY(id_usu,cod_caro),
FOREIGN KEY(id_usu) REFERENCES Usuario (id_usu),
FOREIGN KEY(cod_caro) REFERENCES carona (cod_caro)
)

CREATE TABLE tipo_evento (
id_tipo_evento INTEGER PRIMARY KEY,
nome_tipo_evento VARCHAR(100),
cod_status_tipo_evento INTEGER
)

ALTER TABLE condomínio ADD FOREIGN KEY(id_usu) REFERENCES Usuario (id_usu)
ALTER TABLE Usuario_Unidade ADD FOREIGN KEY(id_usu) REFERENCES Usuario (id_usu)
ALTER TABLE visitas_zelador ADD FOREIGN KEY(id_usu_zelador) REFERENCES Usuario (id_usu)
ALTER TABLE visitas_zelador ADD FOREIGN KEY(id_usu_morador) REFERENCES Usuario (id_usu)
ALTER TABLE ocorrencias ADD FOREIGN KEY(id_usu) REFERENCES Usuario (id_usu)
ALTER TABLE eventos ADD FOREIGN KEY(id_tipo_evento) REFERENCES tipo_evento (id_tipo_evento)
ALTER TABLE eventos ADD FOREIGN KEY(id_usu) REFERENCES Usuario (id_usu)
ALTER TABLE reservas ADD FOREIGN KEY(id_tipo_reserva) REFERENCES tipo_reservas (id_tipo_reserva)
