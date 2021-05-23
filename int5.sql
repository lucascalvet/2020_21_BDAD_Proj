.mode	columns
.headers	on
.nullvalue	NULL

-- Numero de releases por jogo

SELECT game.title AS `game_title      `, COUNT(release.id)
FROM Release, Game
WHERE game.id=game
GROUP BY game.title;
