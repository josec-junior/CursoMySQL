INSERT INTO Cursos VALUES
("1", "HTML4", "Curso de HTML5", "40", "37", "2014"),
("2", "Algoritmos", "Lógica de Progamação", "20", "15", "2014"),
("3", "Photoshop", "Dicas de Photoshop CC", "10", "8", "2014"),
("4", "PGP", "Curso de PHP para iniciantes", "40", "20", "2010"),
("5", "Jarva", "Introdução à Linguagem Java", "10", "29", "2000"),
("6", "MySQL", "Banco de Dados MySQL", "30", "15", "2016"),
("7", "Word", "Curso completo de Word", "40", "30", "2016"),
("8", "Sapateado", "Danças Rítmicas", "40", "37", "2018"),
("9", "Cozinha Árabe", "Aprender a fazer Kibe", "40", "30", "2018"),
("10", "YouTuber", "Gerar polêmica e ganhar inscritos", "5", "2", "2018");

SELECT * FROM Cursos;

UPDATE Cursos
SET nome = "HTML5" WHERE idcurso = "1"; -- Modificar linha/registro

UPDATE Cursos
SET nome = "PHP", ano = "2015" WHERE idcurso = "4";

UPDATE Cursos
SET nome = "Java", carga = "40", ano = "2015" WHERE idcurso = "5";

DELETE FROM Cursos WHERE idcurso = 8; -- Apagar uma linha/registro

DELETE FROM Cursos WHERE idcurso = 9;

DELETE FROM Cursos WHERE idcurso = 10;

TRUNCATE TABLE Cursos; -- Apagar todos os registro de uma tabela