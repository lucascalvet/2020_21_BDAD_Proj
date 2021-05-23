.mode	columns
.headers	on
.nullvalue	NULL

--Lista de achievements de cada jogo

SELECT Game.title AS game_title, Achievements.title as achievement_title, Achievements.description 
FROM Game,Achievements 
WHERE Game.id = Achievements.game;
