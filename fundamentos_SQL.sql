-- ==============================================
-- ARQUIVO: fundamentos_SQL.sql
-- DESCRIÇÃO: Principais tipos de dados e funções SQL
-- ==============================================

-- ===============================
-- TIPOS DE DADOS MAIS COMUNS
-- ===============================

-- NUMÉRICOS:
-- INT        -> números inteiros (ex: 10, -5, 1000)
-- DECIMAL(p,s) -> números decimais com precisão (ex: DECIMAL(5,2) = até 999.99)
-- FLOAT / DOUBLE -> números com casas decimais, mas menos precisão que DECIMAL

-- TEXTO:
-- CHAR(n)    -> texto de tamanho fixo (ex: CHAR(10))
-- VARCHAR(n) -> texto de tamanho variável (ex: VARCHAR(100))
-- TEXT       -> texto longo (ex: descrições, observações)

-- DATA E HORA:
-- DATE       -> armazena apenas data (AAAA-MM-DD)
-- TIME       -> armazena apenas hora (HH:MM:SS)
-- DATETIME   -> armazena data e hora
-- TIMESTAMP  -> data e hora atualizadas automaticamente (geralmente usado em logs)

-- BOOLEANO:
-- BOOLEAN / BOOL -> valores lógicos TRUE ou FALSE

-- ===============================
-- FUNÇÕES MAIS UTILIZADAS
-- ===============================

-- FUNÇÕES DE AGREGAÇÃO:
-- AVG(coluna)    -> calcula a média dos valores
-- COUNT(coluna)  -> conta o número de registros
-- SUM(coluna)    -> soma dos valores
-- MAX(coluna)    -> maior valor
-- MIN(coluna)    -> menor valor

-- FUNÇÕES DE TEXTO:
-- UPPER(texto)   -> converte para maiúsculas
-- LOWER(texto)   -> converte para minúsculas
-- LENGTH(texto)  -> retorna o tamanho do texto
-- CONCAT(a, b)   -> concatena (junta) duas strings

-- FUNÇÕES DE DATA:
-- NOW()          -> retorna a data e hora atuais
-- CURDATE()      -> retorna apenas a data atual
-- YEAR(data)     -> extrai o ano de uma data
-- MONTH(data)    -> extrai o mês de uma data
-- DAY(data)      -> extrai o dia de uma data

-- FUNÇÕES CONDICIONAIS:
-- CASE WHEN condicao THEN valor ELSE outro END -> retorna valores condicionais
-- COALESCE(valor1, valor2, ...) -> retorna o primeiro valor não nulo

-- ===============================
-- EXEMPLOS DE USO
-- ===============================

-- SELECT AVG(notaFinal) AS mediaNotas FROM alunos;
-- SELECT UPPER(nome) AS nomeMaiusculo FROM alunos;
-- SELECT CONCAT(nome, ' - ', curso) AS alunoCurso FROM alunos;
-- SELECT YEAR(dataNascimento) AS anoNasc FROM alunos;

-- FIM DO ARQUIVO
