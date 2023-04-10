SELECT * FROM Cursos
ORDER BY nome; -- Selecionar todas as colunas da tabela cursos, ordenando pelo nome (em ordem alfabética)

SELECT * FROM Cursos
ORDER BY nome DESC; -- Selecionar todas as colunas da tabela cursos, ordenando pelo nome (em ordem alfabética inversa/"decrescente")

SELECT nome, carga, ano FROM Cursos
ORDER BY ano, nome; -- Selecionar somente as colunas nome, carga e ano, ordenando pelo ano e pelo nome (em ordem alfabética)

SELECT * FROM Cursos
WHERE ano = "2016" ORDER BY nome; -- Selecionar os cursos que são do ano de 2016

SELECT nome, descricao, ano FROM Cursos
WHERE ano <= 2015 ORDER BY nome; -- Selecionar o nome, descrição e ano dos cursos que são de 2015 e anos anteriores

SELECT nome, descricao, ano FROM Cursos
WHERE ano >= 2016 ORDER BY nome; -- Selecionar " " dos cursos que são de 2016 e anos posteriores

SELECT nome, descricao, ano FROM Cursos
WHERE ano <> 2016 ORDER BY nome; -- Selecionar " " dos cursos que não são de 2016

SELECT nome, ano FROM Cursos
WHERE ano BETWEEN 2014 AND 2016
ORDER BY ano DESC, nome ASC; /* Selecionar o nome e o ano dos cursos que são entre 2014 e 2016,
ordenando pelo ano de forma decrescente e o nome de forma ascendente/alfabética */

SELECT nome, ano FROM Cursos
WHERE ano IN (2018, 2020)
ORDER BY ano; -- Selecionar " " dos cursos que são de 2018 e 2020

SELECT * FROM Cursos
WHERE carga > 35 AND totaulas < 30; -- Selecionar os cursos que possuem carga horária maior do que 35 E o total de aulas menor do que 30

SELECT * FROM Cursos
WHERE carga > 35 OR totaulas < 30; -- Selecionar os cursos que possuem carga horária maior do que 35 OU o total de aulas menor do que 30