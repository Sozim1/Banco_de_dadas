

-- TABELA DE CURSOS:
CREATE TABLE tb_curso(
	idCurso INT PRIMARY KEY AUTO_INCREMENT,
    nome_curso VARCHAR(30) NOT NULL,
    tipo_curso VARCHAR(15) NOT NULL
);

-- alguns dados para a tela de cursos (testes):
INSERT INTO tb_curso(nome_curso, tipo_curso) 
VALUES ('Tec. em Análise e Desenv. de Sistemas', 'Tecnólogo');
INSERT INTO tb_curso(nome_curso, tipo_curso) 
VALUES ('Ciência da Computação', 'Bacharelado');
INSERT INTO tb_curso(nome_curso, tipo_curso) 
VALUES ('Corte e Costura', 'Doutorado');
INSERT INTO tb_curso(nome_curso, tipo_curso) 
VALUES ('Biologia', 'Bacharelado');

-- tabela de alunos:
CREATE TABLE  tb_aluno(
	idAluno INT PRIMARY KEY AUTO_INCREMENT,
    ra INT NOT NULL UNIQUE,
    nome VARCHAR(60) NOT NULL,
    idCurso INT NOT NULL,
        CONSTRAINT fk_aluno_curso FOREIGN KEY (idCurso)
        REFERENCES tb_curso(idCurso)
);

-- algumas inserções de alunos para testes:
INSERT INTO tb_aluno(ra, nome, idCurso)
VALUES (123, 'Thiago Traue', 3);
INSERT INTO tb_aluno(ra, nome, idCurso)
VALUES (321, 'Daniele Reis', 2);
INSERT INTO tb_aluno(ra, nome, idCurso)
VALUES (666, 'Luci Belze', 4);
INSERT INTO tb_aluno(ra, nome, idCurso)
VALUES (777, 'André Rissi', 1);
INSERT INTO tb_aluno(ra, nome, idCurso)
VALUES (333, 'Henrique Galdino', 1);
INSERT INTO tb_aluno(ra, nome, idCurso)
VALUES (4444, 'Jovisclayson Silva', 1);
