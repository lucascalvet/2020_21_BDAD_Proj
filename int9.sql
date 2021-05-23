.mode	columns
.headers	on
.nullvalue	NULL

-- Nº de achievements de um utilizador, em jogos em que o utilizador pelo menos um achievement, e respetiva percentagem de passagem do jogo

SELECT title, nr_achievements, total_achievements, ROUND(100.0 * nr_achievements/total_achievements, 2) AS completion_percentage
FROM (
    SELECT game, COUNT(id) as nr_achievements
    FROM Achievements NATURAL JOIN (
        SELECT achievement AS id
        FROM UserAchievements
        WHERE user='jfred24'
    ) GROUP BY game
) NATURAL JOIN (
    SELECT game, COUNT(id) AS total_achievements
    FROM Achievements
    GROUP BY game
) NATURAL JOIN (
    SELECT id AS game, title
    FROM Game
);
