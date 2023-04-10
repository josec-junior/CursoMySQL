SELECT * FROM Cursos
WHERE nome LIKE 'P%'; -- Selecionar os cursos que começam com a letra P */

SELECT * FROM Cursos
WHERE nome LIKE '%A'; -- Selecionar os cursos que terminam com a letra A */

SELECT * FROM Cursos
WHERE nome LIKE '%A%'; -- Selecionar os cursos que possuem a letra A */

SELECT * FROM Cursos
WHERE nome NOT LIKE '%A%'; -- Selecionar os cursos que não possuem a letra A */

SELECT * FROM Gafanhotos
WHERE nome LIKE '%_Silva%'; -- Selecionar os gafanhotos que tem o sobrenome Silva

SELECT DISTINCT(nacionalidade) FROM Gafanhotos
ORDER BY nacionalidade; -- Selecionar a nacionalidade dos gafanhotos (sem repetições)

SELECT DISTINCT(carga) FROM Cursos
ORDER BY carga; -- Selecionar as cargas horárias dos cursos (sem repetições)

SELECT COUNT(*) FROM Cursos; -- Selecionar a quantidade de cursos inseridos no banco de dados

SELECT COUNT(*) FROM Cursos
WHERE carga > 40; -- Selecionar a quantidade de cursos que possuem carga horária maior do que 40

SELECT MAX(carga) FROM Cursos; -- Selecionar a maior carga horária dos cursos

SELECT MAX(totaulas) FROM Cursos
WHERE ano = 2016; -- Selecionar o maior total de aulas dos cursos de 2016

SELECT MIN(totaulas) FROM Cursos
WHERE ano = 2016; -- Selecionar o menor total de aulas dos cursos de 2016

SELECT SUM(totaulas) FROM Cursos
WHERE ano = 2016; -- Selecionar o somatório do total de aulas dos cursos de 2016

SELECT AVG(totaulas) FROM Cursos
WHERE ano = 2016; -- Selecionar a média do total de aulas dos cursos de 2016