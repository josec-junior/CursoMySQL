-- 01 - Uma lista com o nome de todas as gafanhotas.
SELECT nome FROM Gafanhotos
WHERE sexo = "F"
ORDER BY nome;

-- 02 - Uma lista com os dados de todos aqueles que nasceram entre 1/Jan/2000 e 31/Dez/2015.
SELECT * FROM Gafanhotos
WHERE nascimento BETWEEN "2000-01-01" AND "2015-12-31"
ORDER BY nascimento;

-- 03 - Uma lista com o nome de todos os homens que trabalham como Programadores.
SELECT nome FROM Gafanhotos
WHERE sexo = "M" AND profissao = "Programador"
ORDER BY nome;

-- 04 - Uma lista com os dados de todas as mulheres que nasceram no Brasil e que têm seu nome iniciando com a letra J.
SELECT * FROM Gafanhotos
WHERE sexo = "F" AND nacionalidade = "Brasil" AND nome LIKE "J%"
ORDER BY nome;

-- 05 - Uma lista com o nome e a nacionalidade de todos os homens que têm Silva no nome, não nasceram no Brasil e pesam menos de 100kg.
SELECT nome, nacionalidade FROM Gafanhotos
WHERE sexo = "M" AND nome LIKE "%Silva%" AND nacionalidade <> "Brasil" AND peso < 100
ORDER BY nacionalidade, nome;

-- 06 - Qual é a maior altura entre gafanhotos homens que moram no Brasil?
SELECT MAX(altura) FROM Gafanhotos
WHERE sexo = "M" AND nacionalidade = "Brasil";

-- 07 - Qual é a média de peso dos gafanhotos cadastrados?
SELECT AVG(peso) FROM Gafanhotos;

-- 08 - Qual é o menor peso entre as gafanhotos mulheres que nasceram fora do Brasil e entre 01/Jan/1990 e 31/Dez/2000.
SELECT MIN(peso) FROM Gafanhotos
WHERE sexo = "F" AND nacionalidade <> "Brasil" AND nascimento BETWEEN "1990-01-01" AND "2000-12-31";

-- 09 - Quantas gafanhotos mulheres têm mais de 1.90m de altura?
SELECT COUNT(*) FROM Gafanhotos
WHERE sexo = "F" AND altura > 1.90;