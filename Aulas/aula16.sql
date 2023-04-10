CREATE TABLE gafanhoto_assiste_curso (
    id INT NOT NULL AUTO_INCREMENT,
    data DATE,
    idgafanhoto INT,
    idcurso INT,
    PRIMARY KEY(id),
    FOREIGN KEY(idgafanhoto) REFERENCES Gafanhotos(id),
    FOREIGN KEY(idcurso) REFERENCES Cursos(id)
) DEFAULT CHARSET = utf8;

INSERT INTO gafanhoto_assiste_curso VALUES
(DEFAULT, "2014-03-01", "1", "2"),
(DEFAULT, "2015-12-22", "3", "6"),
(DEFAULT, "2014-01-01", "22", "12"),
(DEFAULT, "2016-05-12", "1", "19");

SELECT g.nome, c.nome FROM
Gafanhotos g JOIN gafanhoto_assiste_curso a
ON g.id = a.idgafanhoto
JOIN Cursos c ON a.idcurso = c.idcurso
ORDER BY g.nome; -- Junção das tabelas Gafanhotos, Cursos e Gafanhotos assistem Cursos utilizando o INNER JOIN.
-- Selecionar o nome dos gafanhotos e o nome dos cursos que cada um (gafanhoto) assiste.