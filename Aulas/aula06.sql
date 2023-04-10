ALTER TABLE Pessoas
ADD COLUMN profissao VARCHAR(10); -- Adicionar a coluna "profissão" na tabela

ALTER TABLE Pessoas
DROP COLUMN profissao; -- Remover a coluna "profissão" da tabela

ALTER TABLE Pessoas
ADD COLUMN profissao VARCHAR(10) AFTER nome; -- Adicionar a coluna "profissão" após a coluna "nome"

ALTER TABLE Pessoas
ADD COLUMN codigo INT FIRST; -- Adicionar a coluna "código" como a primeira coluna da tabela

ALTER TABLE Pessoas
MODIFY COLUMN profissao VARCHAR(20) NOT NULL DEFAULT ""; -- Modificando o tipo e as constraints da coluna "profissão"

ALTER TABLE Pessoas
CHANGE COLUMN profissao prof VARCHAR(20); -- Modificando o nome, o tipo e as constraints da coluna "profissão"

ALTER TABLE Pessoas
RENAME TO Gafanhotos; -- Renomeando a tabela "Pessoas" para "Gafanhotos"

CREATE TABLE IF NOT EXISTS Cursos (
    nome VARCHAR(30) NOT NULL UNIQUE,
    descricao TEXT,
    carga INT UNSIGNED, -- UNSIGNED = Não é permitido sinal, ou seja, só é permitido números positivos
    totaulas INT UNSIGNED,
    ano YEAR DEFAULT "2016"
) DEFAULT CHARSET = utf8; -- Criando a tabela "Cursos" utilizando a condicional IF NOT EXISTS (Se não existir)

ALTER TABLE Cursos
ADD COLUMN idcurso INT FIRST;

ALTER TABLE Cursos
ADD PRIMARY KEY (idcurso); -- Tornando a coluna "idcurso" em chave primária da tabela "Cursos" 