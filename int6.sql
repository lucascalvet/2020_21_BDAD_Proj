.mode	columns
.headers	on
.nullvalue	NULL

-- Lista de todos os jogos e respetivos developers

SELECT DISTINCT title, publisher, developer
FROM game, (GamePublisher NATURAL JOIN GameDeveloper)
WHERE game = Game.id;
