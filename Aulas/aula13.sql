SELECT totaulas, COUNT(*) FROM Cursos 
GROUP BY totaulas ORDER BY totaulas; -- Agrupar o total de aulas e exibir a quantidade de cada grupo

SELECT carga, COUNT(nome) FROM Cursos WHERE totaulas = 30
GROUP BY carga; -- Agrupar os cursos que possuem um total de 30 aulas, pela carga

SELECT ano, COUNT(*) FROM Cursos
GROUP BY ano HAVING COUNT(ano) >= 5
ORDER BY COUNT(*) DESC; -- Agrupar os anos que possuem 5 ou mais cursos

SELECT carga, COUNT(*) FROM Cursos
WHERE ano > 2015
GROUP BY carga
HAVING carga > (SELECT AVG(carga) FROM Cursos); -- Selecionar a carga horária dos cursos que são depois de 2015, agrupados pela carga horária e possuem essa maior do que a média da carga horária de todos cursos