USE cadastro;

INSERT INTO Pessoas(nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES ("Godofredo", "1984-01-02", "M", "78.5", "1.83", "Brasil");

INSERT INTO Pessoas(nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES ("Maria", "1999-12-30", "F", "55.5", "1.65", "Portugal");

INSERT INTO Pessoas(nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES (DEFAULT, "Creuza", "1920-12-30", "F", "50.2", "1.65", DEFAULT);

INSERT INTO Pessoas
VALUES (DEFAULT, "Adalgiza", "1930-11-2", "F", "63.2", "1.75", "Irlanda"); -- Forma Simplificada

INSERT INTO Pessoas VALUES
(DEFAULT, "Ana", "1975-12-22", "F", "52.3", "1.45", "EUA"),
(DEFAULT, "Pedro", "2000-07-15", "M", "87", "2", "Brasil"),
(DEFAULT, "Maria", "1999-05-30", "F", "75.9", "1.70", "Portugal"); -- Inserindo vários registros de uma vez

SELECT * FROM Pessoas;