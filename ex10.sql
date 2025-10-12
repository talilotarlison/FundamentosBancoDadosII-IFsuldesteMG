-- ex10 - banco de dados aluno normalizado

-- Tabela de Cursos
CREATE TABLE cursos (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  nome TEXT NOT NULL
);

-- Tabela de Disciplinas
CREATE TABLE disciplinas (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  nome TEXT NOT NULL
);

-- Tabela de Alunos
CREATE TABLE alunos (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  matricula INTEGER NOT NULL,
  nome TEXT NOT NULL,
  dataNascimento DATE NOT NULL,
  curso_id INTEGER,
  FOREIGN KEY (curso_id) REFERENCES cursos(id)
);

-- Tabela de Notas
CREATE TABLE notas (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  aluno_id INTEGER,
  disciplina_id INTEGER,
  notaFinal FLOAT NOT NULL,
  FOREIGN KEY (aluno_id) REFERENCES alunos(id),
  FOREIGN KEY (disciplina_id) REFERENCES disciplinas(id)
);

-- Inserindo Cursos
INSERT INTO cursos (nome) VALUES 
('Ciência da Computação'),
('Engenharia Civil'),
('Administração'),
('Direito'),
('Medicina'),
('Enfermagem'),
('Arquitetura'),
('Psicologia'),
('Educação Física'),
('Engenharia Elétrica'),
('Design Gráfico'),
('Contabilidade'),
('Nutrição'),
('Sistemas de Informação'),
('Pedagogia'),
('Engenharia Mecânica'),
('Publicidade e Propaganda'),
('Ciências Contábeis'),
('Medicina Veterinária');

-- Inserindo Disciplinas
INSERT INTO disciplinas (nome) VALUES 
('Cálculo I'),
('Desenho Técnico'),
('Gestão Financeira'),
('Direito Constitucional'),
('Anatomia Humana'),
('Microbiologia'),
('História da Arte'),
('Teorias da Personalidade'),
('Fisiologia do Exercício'),
('Programação Orientada a Objetos'),
('Circuitos Elétricos'),
('Tipografia e Layout'),
('Auditoria'),
('Bioquímica dos Alimentos'),
('Banco de Dados I'),
('Psicologia da Educação'),
('Termodinâmica'),
('Marketing Digital'),
('Contabilidade Gerencial'),
('Anatomia Animal');

-- Inserindo Alunos
-- (Agora associamos cada aluno a um curso via o id do curso)
INSERT INTO alunos (matricula, nome, dataNascimento, curso_id) VALUES 
(10439, 'Caio da Costa', '1999-11-25', (SELECT id FROM cursos WHERE nome = 'Ciência da Computação')),
(10440, 'Caio de Brito', '1999-11-25', (SELECT id FROM cursos WHERE nome = 'Ciência da Computação')),
(10441, 'Ana Paula Silva', '2000-02-10', (SELECT id FROM cursos WHERE nome = 'Engenharia Civil')),
(10442, 'Bruno Henrique Costa', '1998-07-18', (SELECT id FROM cursos WHERE nome = 'Administração')),
(10443, 'Mariana Alves Rocha', '2001-03-25', (SELECT id FROM cursos WHERE nome = 'Direito')),
(10444, 'Lucas Pereira Santos', '1999-09-14', (SELECT id FROM cursos WHERE nome = 'Medicina')),
(10445, 'Jéssica Nogueira Lima', '2002-01-05', (SELECT id FROM cursos WHERE nome = 'Enfermagem')),
(10446, 'Rafael Gomes Andrade', '1997-10-09', (SELECT id FROM cursos WHERE nome = 'Arquitetura')),
(10447, 'Camila Ribeiro Torres', '2000-04-17', (SELECT id FROM cursos WHERE nome = 'Psicologia')),
(10448, 'Pedro Lucas Fernandes', '1998-12-12', (SELECT id FROM cursos WHERE nome = 'Educação Física')),
(10449, 'Lívia Mendes Carvalho', '2001-06-23', (SELECT id FROM cursos WHERE nome = 'Ciência da Computação')),
(10450, 'João Victor Oliveira', '1999-08-11', (SELECT id FROM cursos WHERE nome = 'Engenharia Elétrica')),
(10451, 'Beatriz Souza Lima', '2000-11-30', (SELECT id FROM cursos WHERE nome = 'Design Gráfico')),
(10452, 'Felipe Araújo Martins', '1998-05-07', (SELECT id FROM cursos WHERE nome = 'Contabilidade')),
(10453, 'Carolina Duarte Mendes', '2002-02-22', (SELECT id FROM cursos WHERE nome = 'Nutrição')),
(10454, 'Gustavo Henrique Silva', '1997-07-15', (SELECT id FROM cursos WHERE nome = 'Sistemas de Informação')),
(10455, 'Natália Ferreira Campos', '2001-09-02', (SELECT id FROM cursos WHERE nome = 'Pedagogia')),
(10456, 'Thiago Moreira Pinto', '2000-10-29', (SELECT id FROM cursos WHERE nome = 'Engenharia Mecânica')),
(10457, 'Isabela Castro Freitas', '1999-03-09', (SELECT id FROM cursos WHERE nome = 'Publicidade e Propaganda')),
(10458, 'André Luiz Cardoso', '1998-06-21', (SELECT id FROM cursos WHERE nome = 'Ciências Contábeis')),
(10459, 'Sofia Almeida Correia', '2001-12-03', (SELECT id FROM cursos WHERE nome = 'Medicina Veterinária'));

-- Inserindo Notas (Associando aluno e disciplina com a nota)
INSERT INTO notas (aluno_id, disciplina_id, notaFinal) VALUES 
((SELECT id FROM alunos WHERE matricula = 10439), (SELECT id FROM disciplinas WHERE nome = 'Cálculo I'), 7.5),
((SELECT id FROM alunos WHERE matricula = 10440), (SELECT id FROM disciplinas WHERE nome = 'Cálculo I'), 7.5),
((SELECT id FROM alunos WHERE matricula = 10441), (SELECT id FROM disciplinas WHERE nome = 'Desenho Técnico'), 8.2),
((SELECT id FROM alunos WHERE matricula = 10442), (SELECT id FROM disciplinas WHERE nome = 'Gestão Financeira'), 6.9),
((SELECT id FROM alunos WHERE matricula = 10443), (SELECT id FROM disciplinas WHERE nome = 'Direito Constitucional'), 9.0),
((SELECT id FROM alunos WHERE matricula = 10444), (SELECT id FROM disciplinas WHERE nome = 'Anatomia Humana'), 8.7),
((SELECT id FROM alunos WHERE matricula = 10445), (SELECT id FROM disciplinas WHERE nome = 'Microbiologia'), 7.8),
((SELECT id FROM alunos WHERE matricula = 10446), (SELECT id FROM disciplinas WHERE nome = 'História da Arte'), 8.5),
((SELECT id FROM alunos WHERE matricula = 10447), (SELECT id FROM disciplinas WHERE nome = 'Teorias da Personalidade'), 9.3),
((SELECT id FROM alunos WHERE matricula = 10448), (SELECT id FROM disciplinas WHERE nome = 'Fisiologia do Exercício'), 7.1),
((SELECT id FROM alunos WHERE matricula = 10449), (SELECT id FROM disciplinas WHERE nome = 'Programação Orientada a Objetos'), 8.9),
((SELECT id FROM alunos WHERE matricula = 10450), (SELECT id FROM disciplinas WHERE nome = 'Circuitos Elétricos'), 7.6),
((SELECT id FROM alunos WHERE matricula = 10451), (SELECT id FROM disciplinas WHERE nome = 'Tipografia e Layout'), 9.1),
((SELECT id FROM alunos WHERE matricula = 10452), (SELECT id FROM disciplinas WHERE nome = 'Auditoria'), 6.8),
((SELECT id FROM alunos WHERE matricula = 10453), (SELECT id FROM disciplinas WHERE nome = 'Bioquímica dos Alimentos'), 8.4),
((SELECT id FROM alunos WHERE matricula = 10454), (SELECT id FROM disciplinas WHERE nome = 'Banco de Dados I'), 9.0),
((SELECT id FROM alunos WHERE matricula = 10455), (SELECT id FROM disciplinas WHERE nome = 'Psicologia da Educação'), 8.0),
((SELECT id FROM alunos WHERE matricula = 10456), (SELECT id FROM disciplinas WHERE nome = 'Termodinâmica'), 7.4),
((SELECT id FROM alunos WHERE matricula = 10457), (SELECT id FROM disciplinas WHERE nome = 'Marketing Digital'), 9.2),
((SELECT id FROM alunos WHERE matricula = 10458), (SELECT id FROM disciplinas WHERE nome = 'Contabilidade Gerencial'), 7.7),
((SELECT id FROM alunos WHERE matricula = 10459), (SELECT id FROM disciplinas WHERE nome = 'Anatomia Animal'), 8.8);

-- Consultas
-- Media por curso
SELECT curso.nome, AVG(notaFinal) AS mediaNotas
FROM alunos
JOIN cursos AS curso ON alunos.curso_id = curso.id
JOIN notas ON alunos.id = notas.aluno_id
GROUP BY curso.id;

-- Media por disciplina
SELECT disciplina.nome, AVG(notaFinal) AS mediaNotas
FROM notas
JOIN disciplinas AS disciplina ON notas.disciplina_id = disciplina.id
GROUP BY disciplina.id;

-- Nota máxima
SELECT MAX(notaFinal) AS notaMaxima, MIN(notaFinal) AS notaMinima
FROM notas;

-- Maior nota com nome do aluno
SELECT aluno.nome, notaFinal
FROM alunos AS aluno
JOIN notas ON aluno

