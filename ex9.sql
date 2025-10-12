
-- tabela alunos
-- id, matricula, nome, dataNascimento, curso, disciplina , notaFinal 

CREATE TABLE alunos(
  id INTEGER PRIMARY KEY auto_increment,
  matricula INTEGER NOT NULL,
  nome TEXT NOT NULL,
  dataNascimento DATE NOT NULL,
  curso TEXT NOT NULL,
  disciplina TEXT NOT NULL,
  notaFinal float  NOT NULL
);

-- inserindo valores no banco
INSERT INTO alunos VALUES (null, "10439", 'Caio da Costa', '1999-11-25','Ciência da Computação','Calculo I', 7.5 );
INSERT INTO alunos VALUES (NULL, "10440", 'Caio de Brito', '1999-11-25', 'Ciência da Computação', 'Cálculo I', 7.5);
INSERT INTO alunos VALUES (NULL, "10441", 'Ana Paula Silva', '2000-02-10', 'Engenharia Civil', 'Desenho Técnico', 8.2);
INSERT INTO alunos VALUES (NULL, "10442", 'Bruno Henrique Costa', '1998-07-18', 'Administração', 'Gestão Financeira', 6.9);
INSERT INTO alunos VALUES (NULL, "10443", 'Mariana Alves Rocha', '2001-03-25', 'Direito', 'Direito Constitucional', 9.0);
INSERT INTO alunos VALUES (NULL, "10444", 'Lucas Pereira Santos', '1999-09-14', 'Medicina', 'Anatomia Humana', 8.7);
INSERT INTO alunos VALUES (NULL, "10445", 'Jéssica Nogueira Lima', '2002-01-05', 'Enfermagem', 'Microbiologia', 7.8);
INSERT INTO alunos VALUES (NULL, "10446", 'Rafael Gomes Andrade', '1997-10-09', 'Arquitetura', 'História da Arte', 8.5);
INSERT INTO alunos VALUES (NULL, "10447", 'Camila Ribeiro Torres', '2000-04-17', 'Psicologia', 'Teorias da Personalidade', 9.3);
INSERT INTO alunos VALUES (NULL, "10448", 'Pedro Lucas Fernandes', '1998-12-12', 'Educação Física', 'Fisiologia do Exercício', 7.1);
INSERT INTO alunos VALUES (NULL, "10449", 'Lívia Mendes Carvalho', '2001-06-23', 'Ciência da Computação', 'Programação Orientada a Objetos', 8.9);
INSERT INTO alunos VALUES (NULL, "10450", 'João Victor Oliveira', '1999-08-11', 'Engenharia Elétrica', 'Circuitos Elétricos', 7.6);
INSERT INTO alunos VALUES (NULL, "10451", 'Beatriz Souza Lima', '2000-11-30', 'Design Gráfico', 'Tipografia e Layout', 9.1);
INSERT INTO alunos VALUES (NULL, "10452", 'Felipe Araújo Martins', '1998-05-07', 'Contabilidade', 'Auditoria', 6.8);
INSERT INTO alunos VALUES (NULL, "10453", 'Carolina Duarte Mendes', '2002-02-22', 'Nutrição', 'Bioquímica dos Alimentos', 8.4);
INSERT INTO alunos VALUES (NULL, "10454", 'Gustavo Henrique Silva', '1997-07-15', 'Sistemas de Informação', 'Banco de Dados I', 9.0);
INSERT INTO alunos VALUES (NULL, "10455", 'Natália Ferreira Campos', '2001-09-02', 'Pedagogia', 'Psicologia da Educação', 8.0);
INSERT INTO alunos VALUES (NULL, "10456", 'Thiago Moreira Pinto', '2000-10-29', 'Engenharia Mecânica', 'Termodinâmica', 7.4);
INSERT INTO alunos VALUES (NULL, "10457", 'Isabela Castro Freitas', '1999-03-09', 'Publicidade e Propaganda', 'Marketing Digital', 9.2);
INSERT INTO alunos VALUES (NULL, "10458", 'André Luiz Cardoso', '1998-06-21', 'Ciências Contábeis', 'Contabilidade Gerencial', 7.7);
INSERT INTO alunos VALUES (NULL, "10459", 'Sofia Almeida Correia', '2001-12-03', 'Medicina Veterinária', 'Anatomia Animal', 8.8);

-- busca todos os dados
select * from alunos;

-- total alunos
-- https://www.devmedia.com.br/funcoes-sql/4978
select count(*) as totalAlunos from alunos;

-- media alunos
select avg(notaFinal) as mediaNotas from alunos;

SELECT AVG(notaFinal) AS mediaNotas
FROM alunos;

-- media por curso
SELECT curso, AVG(notaFinal) AS mediaNotas
FROM alunos
GROUP BY curso;

-- media por disciplina

SELECT disciplina, AVG(notaFinal) AS mediaNotas
FROM alunos
GROUP BY disciplina;

-- nota maxima
SELECT 
    MAX(notaFinal) AS notaMaxima,
    MIN(notaFinal) AS notaMinima
FROM alunos;

-- Maior nota com nome do aluno

SELECT nome, notaFinal 
FROM alunos
WHERE notaFinal = (SELECT MAX(notaFinal) FROM alunos);


--Menor nota com nome do aluno

SELECT nome, notaFinal 
FROM alunos
WHERE notaFinal = (SELECT MIN(notaFinal) FROM alunos);

  -- notas que estão acima da media
SELECT notaFinal 
FROM alunos
WHERE notaFinal >= (SELECT avg(notaFinal) FROM alunos);

