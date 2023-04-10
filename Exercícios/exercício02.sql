-- 01 - Uma lista com as profissões dos gafanhotos e seus respectivos quantitativos.
SELECT profissao, COUNT(*)
FROM Gafanhotos
GROUP BY profissao
ORDER BY profissao;

-- 02 - Quantos gafanhotos homens e quantas gafanhotos mulheres nasceram após 01/Jan/2005.
SELECT sexo, COUNT(*)
FROM Gafanhotos
WHERE nascimento > "2005-01-01"
GROUP BY sexo;

-- 03 - Uma lista com os gafanhotos que nasceram fora do Brasil, mostrando o país de origem e o total de pessoas nascidas lá. Só nos interessam os países que tiverem mais de 3 gafanhotos com essa nacionalidade.
SELECT nacionalidade, COUNT(*)
FROM Gafanhotos
WHERE nacionalidade <> "Brasil"
GROUP BY nacionalidade
HAVING COUNT(*) > 3;

-- 04 - Uma lista agrupada pela altura dos gafanhotos, mostrando quantas pessoas pesam mais de 100kg e que estão acima da média de altura e todos os cadastrados
SELECT altura, COUNT(*)
FROM Gafanhotos
WHERE peso > 100
GROUP BY altura
HAVING altura > (SELECT AVG(altura) FROM Gafanhotos);