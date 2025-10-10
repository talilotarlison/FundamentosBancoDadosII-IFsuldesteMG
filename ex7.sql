-- tabela produtos

-- nome do produto, valor, marca


CREATE TABLE produtos(
  idCodProduto INTEGER PRIMARY KEY,
  nome TEXT NOT NULL,
  valor float NOT NULL,
  marca TEXT NOT NULL
);

INSERT INTO produtos VALUES (4646, "A32", 1052.25, 'Samsung');
INSERT INTO produtos VALUES (1546, "A20", 752.25, 'Samsung');

select * from produtos;


-- tabela endereco
-- id , Rua, CEP, Bairro, Cidade e UF

CREATE TABLE endereco(
  idEndereco INTEGER PRIMARY KEY auto_increment,
  rua TEXT NOT NULL,
  CEP TEXT NOT NULL,
  bairro TEXT NOT NULL,
  cidade TEXT NOT NULL,
  UF varchar(4)  NOT NULL
);

INSERT INTO endereco VALUES (null,'Rua Antônio Numes', '88045963', 'Palmeiras', 'Londrina', 'PR');
INSERT INTO endereco VALUES (null,'Rua Palmeias Novas', '88078923', 'Leblon', 'Rio de Janeiro', 'RJ');

select * from endereco;


-- tabela clientes 
-- id, CPF, Nome, Data de Nascimento, Endereço


CREATE TABLE clientes (
  idCliente INTEGER PRIMARY KEY auto_increment,
  cpf varchar(11) NOT NULL,
  nome TEXT NOT NULL,
  dataNascimento DATE NOT NULL,
  FK_endereco INTEGER NOT NULL,
  FOREIGN KEY (FK_endereco)REFERENCES endereco(idEndereco)
)ENGINE=InnoDB;



INSERT INTO clientes VALUES (null,'01203501288', 'Jõao Batista', '1969-11-25', 2);
INSERT INTO clientes VALUES (null,'78126515899', 'Maria de Brito Vieira', '1999-12-25', 1);

select * from clientes; 

-- tabela vendas

-- produto, cliente,  data da compra.

CREATE TABLE vendas(
  idVenda INTEGER PRIMARY KEY auto_increment,	
  FK_idProduto INTEGER, 
  FK_idCliente INTEGER,
  dataCompra DATE NOT NULL,
  FOREIGN KEY (FK_idProduto )REFERENCES produtos(idCodProduto ),
 FOREIGN KEY (FK_idCliente  )REFERENCES clientes(idCliente )
)ENGINE=InnoDB;

INSERT INTO vendas VALUES (null,1546,1,'2025-08-25');

select * from vendas; 
