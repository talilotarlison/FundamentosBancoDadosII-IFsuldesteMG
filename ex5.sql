
-- create a table
--  CPF, Nome, Data de Nascimento, Endereço, CEP, Bairro, Cidade e UF, data da última compra.

CREATE TABLE clientes (
  id INTEGER PRIMARY KEY auto_increment,
  cpf varchar(11) NOT NULL,
  nome TEXT NOT NULL,
  dataNascimento DATE NOT NULL,
  endereco TEXT NOT NULL,
  cep TEXT NOT NULL,
  bairro TEXT NOT NULL,
  cidade TEXT NOT NULL,
  UF  varchar(4)  NOT NULL
);


-- adicionar campo ultima compra
ALTER TABLE clientes
ADD dataUltCompra DATE NOT NULL;


-- inserir ultima compra

-- -- insert  valores

-- 04496332780, João da Silva, 25/11/1969, Rua Antônio Numes, 88045963, Palmeiras, Londrina, PR.
-- 05485031490, Ana Regina Fagundes, 21/09/1986, Rua Palmeias Novas, 88078923, Leblon, Rio de Janeiro, RJ. 
-- 03350314905, Fernando Soares, 05/03/1990, Rua Palmeias Novas, 88048917, Copacabana, Rio de Janeiro, RJ.

-- insert valores no banco
INSERT INTO clientes VALUES (null,'04496342780', 'Caio de brito', '1969-11-25','Rua Canto Alto', '424464', 'Parana', 'Londrina', 'PR','2024-12-31' );
INSERT INTO clientes VALUES (null, '04496332780', 'João da Silva', '1969-11-25', 'Rua Antônio Numes', '88045963', 'Palmeiras', 'Londrina', 'PR', '2025-06-15');
INSERT INTO clientes VALUES (null, '05485031490', 'Ana Regina Fagundes', '1986-09-21', 'Rua Palmeias Novas', '88078923', 'Leblon', 'Rio de Janeiro', 'RJ', '2025-08-01');
INSERT INTO clientes VALUES (null, '03350314905', 'Fernando Soares', '1990-03-05', 'Rua Palmeias Novas', '88048917', 'Copacabana', 'Rio de Janeiro', 'RJ', '2025-09-22');



-- fetch nos values

-- SELECT * FROM clientes;

-- SELECT * FROM clientes WHERE Cidade = 'Londrina';

-- SELECT * FROM clientes WHERE Cidade like 'Rio%';

-- SELECT * FROM clientes WHERE Cidade = 'Rio de Janeiro';

-- delete valores

-- SELECT * FROM clientes;

-- https://www.w3schools.com/mysql/mysql_alter.asp
DELETE FROM clientes WHERE Cidade = 'Londrina';

SELECT * FROM clientes;


