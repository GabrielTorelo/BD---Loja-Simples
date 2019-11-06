SHOW DATABASES //Ver os bancos de dados

CREATE DATABASE teste //Cria o banco de dados

USE DATABASE //Usa o banco criado

//Cria a tabela estado somente se não existente
CREATE TABLE IF NOT EXISTS estado (
	estado_codigo CHAR(2) PRIMARY KEY, //Chave privaria
	estado_nome VARCHAR(25) NOT NULL //Atributo simples não nulo
) ENGINE = INNODB; //Engine que o mysql vai rodar

//Cria a tabela cliente somente se não existente
CREATE TABLE IF NOT EXISTS cliente (
    cliente_id INTEGER(10) AUTO_INCREMENT PRIMARY KEY, //Chave privaria com auto incremento
    cliente_nome CHAR(50) NOT NULL, //Atributo simples não nulo
	cliente_end CHAR(50) NULL, //Atributo simples pode ser nulo
	cliente_end_cidade CHAR(50) NULL, // ||
	estado_codigo CHAR(2) NOT NULL, //Chave Estrangeira de estado em estado_codigo
	cliente_end_cep CHAR(8)  NULL, //Atributo simples pode ser nulo
	cliente_telefone CHAR(10) NULL, // ||
	cliente_per_desconto DECIMAL(2,0) NULL // ||
)  ENGINE=INNODB;  //Engine que o mysql vai rodar

ALTER TABLE cliente //Altera a tabela cliente, adicionando estado_codigo como Chave Estrangeira
ADD FOREIGN KEY (estado_codigo) 
REFERENCES estado(estado_codigo); //Referindo-se a tabela estado em estado_codigo

//Cria a tabela ue_produto somente se não existente
CREATE TABLE IF NOT EXISTS ue_produto (
    ue_produto_cod CHAR(3) PRIMARY KEY, //Chave primaria
    ue_produto_descr VARCHAR(50) NULL  //Atributo simples pode ser nulo
)  ENGINE=INNODB; //Engine que o mysql vai rodar

//Cria a tabela produto somente se não existente
CREATE TABLE IF NOT EXISTS produto (
    produto_codigo SMALLINT(6) PRIMARY KEY, //Chave primaria
    produto_nome CHAR(40), //Atributo simples
    produto_preco DOUBLE (7,2), // ||
    ue_produto_cod CHAR(3) //Chave Estrangeira de ue_produto em ue_produto_cod
)  ENGINE=INNODB; //Engine que o mysql vai rodar

ALTER TABLE produto  //Altera a tabela produto, adicionando ue_produto_cod como Chave Estrangeira
ADD FOREIGN KEY (ue_produto_cod) 
REFERENCES ue_produto(ue_produto_cod); //Referindo-se a tabela ue_produto em ue_produto_cod

//Cria a tabela pedido somente se não existente
CREATE TABLE IF NOT EXISTS pedido (
    pedido_identificacao INTEGER(10) PRIMARY KEY, //Chave Primaria
	//Dados que nunca mudam, ou seja, sempre será somente as 4 opeções.
	pedido_tipo ENUM('A Vista','A prazo','Crédito a Vista','Crédito a Prazo'),
    cliente_id INTEGER(10),//Atributo simples
	pedido_data_entrega DATE, // ||
    pedido_valor_total DOUBLE (7,2), // ||	
    pedido_desconto DOUBLE (7,2), // ||
	pedido_data_embarque DATE // ||
)  ENGINE=INNODB; //Engine que o mysql vai rodar

ALTER TABLE pedido  //Altera a tabela pedido, adicionando cliente_id como Chave Estrangeira
ADD FOREIGN KEY (cliente_id) 
REFERENCES cliente(cliente_id); //Referindo-se a tabela cliente em cliente_id

//Cria a tabela item somente se não existente
CREATE TABLE IF NOT EXISTS item (
    pedido_identificacao INTEGER(10) PRIMARY KEY, //Chave Primaria
    produto_codigo SMALLINT(6),	//Atributo simples
	item_quantidade SMALLINT(6), //Atributo simples
    item_valor_unitario DOUBLE (7,2), //Atributo simples
	item_valor_total DOUBLE (7,2) //Atributo simples
)  ENGINE=INNODB; //Engine que o mysql vai rodar

ALTER TABLE item //Altera a tabela item, adicionando produto_codigo como Chave Estrangeira
ADD FOREIGN KEY (produto_codigo) 
REFERENCES produto(produto_codigo); //Referindo-se a tabela cliente em cliente_id

SHOW TABLES; //Vizualizar o Banco criado

DESCRIBE estado; //Descreve graficamente a tabela estado
DESCRIBE cliente; //Descreve graficamente a tabela cliente
DESCRIBE ue_produto; //Descreve graficamente a tabela ue_produto
DESCRIBE produto; //Descreve graficamente a tabela produto
DESCRIBE pedido; //Descreve graficamente a tabela pedido
DESCRIBE item; //Descreve graficamente a tabela item
