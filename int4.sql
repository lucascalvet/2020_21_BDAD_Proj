.mode	columns
.headers	on
.nullvalue	NULL

-- Publisher com mais jogos publicados

SELECT publisher, MAX(game_count) FROM (SELECT publisher, COUNT(game) AS game_count FROM gamepublisher GROUP BY publisher);
