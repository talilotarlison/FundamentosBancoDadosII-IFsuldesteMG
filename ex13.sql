
-- Criando a tabela de alunos:
CREATE TABLE Alunos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Esta tabela contém os seguintes campos:

-- id: identificador único do aluno (chave primária, autoincrement).

-- nome: nome do aluno.

-- idade: idade do aluno.

-- email: e-mail do aluno (campo único, para evitar duplicidade).

-- data_cadastro: data e hora de cadastro (automático).

-- Criando a stored procedure para inserir dados com tratamento de erro:

DELIMITER $$

CREATE PROCEDURE InserirAluno(
    IN p_nome VARCHAR(100),
    IN p_idade INT,
    IN p_email VARCHAR(100)
)
BEGIN
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
    BEGIN
        -- Se houver erro, realiza um rollback e exibe a mensagem
        ROLLBACK;
        SELECT 'Erro ao inserir aluno. Transação revertida.' AS Mensagem;
    END;
    
    -- Inicia a transação
    START TRANSACTION;
    
    -- Tenta inserir os dados na tabela Alunos
    INSERT INTO Alunos (nome, idade, email)
    VALUES (p_nome, p_idade, p_email);
    
    -- Se não houver erro, faz o commit da transação
    COMMIT;
    
    -- Exibe uma mensagem de sucesso
    SELECT 'Aluno inserido com sucesso!' AS Mensagem;
END$$

DELIMITER ;

-- Explicação do código:

-- DELIMITER $$: Define o delimitador para o comando SQL, já que a procedure pode conter múltiplos comandos.

-- START TRANSACTION: Inicia a transação.

-- CONTINUE HANDLER FOR SQLEXCEPTION: Declara um manipulador para capturar exceções (erros SQL) durante a execução. Se ocorrer um erro, a transação é revertida (ROLLBACK), e uma mensagem é retornada.

-- COMMIT: Confirma a transação se não ocorrer nenhum erro.

-- ROLBACK: Reverte a transação se algum erro ocorrer.

-- SELECT 'Mensagem': Retorna uma mensagem de sucesso ou erro.

-- . Usando a procedure:

CALL InserirAluno('João Silva', 20, 'joao.silva@email.com');

SELECT * from Alunos;

CALL InserirAluno('Caio Ribeiro', 20, 'Caio.silva@email.com');

SELECT * from Alunos;
