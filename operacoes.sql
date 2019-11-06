.: INSERT :.

INSERT INTO estado(estado_codigo, estado_nome) //Seleciona a tabela e os atributos onde irá inserir dados
VALUES (16, 'São Paulo'); //Valores a serem inseridos nos atributos

INSERT INTO cliente(cliente_nome)  //Seleciona a tabela e os atributos onde irá inserir dados
VALUES ('Gabriel'); //Valores a serem inseridos nos atributos

INSERT INTO produto(produto_codigo, produto_nome, produto_preco)  //Seleciona a tabela e os atributos onde irá inserir dados
VALUES (1, 'Cama', 500); //Valores a serem inseridos nos atributos

.: SELECT :.

SELECT * FROM cliente; //Seleciona Todos os campos de cliente

SELECT * FROM endereco; //Seleciona Todos os endereco de cliente

SELECT * FROM pedido; //Seleciona Todos os pedido de cliente

.: UPDATE :.

//Altera na table cliente cliente_nome para CHAR(51)
ALTER TABLE cliente CHANGE cliente_nome 'cliente_nome'CHAR(51) NOT NULL;

//Altera na table produto produto_nome para CHAR(41)
ALTER TABLE produto CHANGE produto_nome 'produto_nome'CHAR(41) NOT NULL;

//Altera na table estado estado_nome para VARCHAR(26)
ALTER TABLE estado CHANGE estado_nome 'estado_nome'VARCHAR(26) NOT NULL;
