-- procedimentos no mysql
-- create
CREATE TABLE EMPLOYEE (
  empId INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  dept TEXT NOT NULL
);

-- insert
INSERT INTO EMPLOYEE VALUES (0001, 'Clark', 'Sales');
INSERT INTO EMPLOYEE VALUES (0002, 'Dave', 'Accounting');
INSERT INTO EMPLOYEE VALUES (0003, 'Ava', 'Sales');

-- fetch nos dados
SELECT * FROM EMPLOYEE WHERE dept = 'Sales';
SELECT name, dept FROM EMPLOYEE WHERE name = 'Clark';


-- stored-procedures
-- busca todos os dados da tabela

DELIMITER $$

CREATE PROCEDURE Todos_Funcionario()
BEGIN
SELECT * FROM EMPLOYEE;
END $$

DELIMITER ;

CALL Todos_Funcionario();

-- buscar funcionario por id

DELIMITER $$

CREATE PROCEDURE Selecionar_Funcionario_ID(IN indentificador INT)
BEGIN
SELECT * FROM EMPLOYEE
WHERE empId = indentificador;
END $$
DELIMITER ;

-- busca
SET @valor = 3;
CALL Selecionar_Funcionario_ID(@valor);
SELECT @valor;

-- buscar funcionario por nome
DELIMITER $$

CREATE PROCEDURE Selecionar_Funcionario_Name(IN nomeFun VARCHAR(100))
BEGIN
    SELECT name, dept
    FROM EMPLOYEE
    WHERE name = nomeFun;
    
    -- Exemplo de saída adicional
    SELECT CONCAT('Procura feita para: ', nomeFun) AS Resultado;
END $$

DELIMITER ;


-- Tipo de parâmetro: O parâmetro nomeFun precisa ter um tipo de dado associado. Eu usei VARCHAR(100) como exemplo, mas você pode ajustar o tamanho conforme necessário.

-- IN: Em MySQL, quando você define um parâmetro na procedure, é necessário especificar a direção do parâmetro (como IN, OUT ou INOUT). Neste caso, estamos utilizando IN, já que estamos apenas passando o valor para a consulta.

-- DELIMITER: Não houve alterações no uso do DELIMITER para mudar o delimitador do código SQL, o que é necessário quando se cria uma procedure no MySQL.

-- busca aqui
SET @nomeFun = "Clark";
CALL Selecionar_Funcionario_Name(@nomeFun);
SELECT @nomeFun;

CALL Selecionar_Funcionario_Name('Clark');

-- mostra os procedimentos
SHOW PROCEDURE STATUS;

-- apagar procedimentos

-- DROP PROCEDURE Listar_Funcionarios;

-- DROP PROCEDURE IF EXISTS Listar_Funcionarios;
-- 
-- SHOW PROCEDURE STATUS;

-- https://www.devmedia.com.br/stored-procedures-no-mysql/29030