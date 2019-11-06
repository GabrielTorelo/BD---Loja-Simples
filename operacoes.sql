INSERT INTO estado(estado_codigo, estado_nome) //Seleciona a tabela e os atributos onde irá inserir dados
VALUES (16, 'São Paulo'); //Valores a serem inseridos nos atributos

INSERT INTO cliente(cliente_nome)  //Seleciona a tabela e os atributos onde irá inserir dados
VALUES ('Gabriel'); //Valores a serem inseridos nos atributos

INSERT INTO produto(produto_codigo, produto_nome, produto_preco)  //Seleciona a tabela e os atributos onde irá inserir dados
VALUES (1, 'Cama', 500); //Valores a serem inseridos nos atributos

SELECT * FROM cliente; //Seleciona Todos os campos de cliente

SELECT * FROM endereco; //Seleciona Todos os endereco de cliente

SELECT * FROM pedido; //Seleciona Todos os pedido de cliente
