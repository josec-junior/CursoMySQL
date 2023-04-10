ALTER TABLE Gafanhotos
ADD COLUMN cursopreferido INT;

ALTER TABLE Gafanhotos
ADD FOREIGN KEY(cursopreferido)
REFERENCES Cursos(idcurso); -- Tornar o campo "curso preferido" em uma chave estrangeira

UPDATE Gafanhotos
SET cursopreferido = 6
WHERE id = 1;

DELETE FROM Cursos
WHERE idcurso = 28;

SELECT g.nome, c.nome, c.ano 
FROM Gafanhotos AS g INNER JOIN Cursos AS c
ON c.idcurso = g.cursopreferido ORDER BY g.nome; -- Junção das tabelas Gafanhotos e Cursos utilizando o INNER JOIN.
-- Selecionar o nome dos gafanhotos, o nome e o ano do curso preferido de cada um.

SELECT g.nome, c.nome, c.ano
FROM Gafanhotos AS g LEFT JOIN Cursos AS c
ON c.idcurso = g.cursopreferido; -- Junção das tabelas Gafanhotos e Cursos utilizando o LEFT OUTER JOIN.
-- Selecionar " "; selecionando também os dados da tabela que está na esquerda (Gafanhotos) que não possuem relação com a tabela da direita (Cursos).

SELECT g.nome, c.nome, c.ano
FROM Gafanhotos AS g RIGHT JOIN Cursos AS c
ON c.idcurso = g.cursopreferido; -- Junção das tabelas Gafanhotos e Cursos utilizando o RIGHT OUTER JOIN.
-- Selecionar " "; selecionando também os dados da tabela que está na direita (Cursos) que não possuem relação com a tabela da esquerda (Gafanhotos).