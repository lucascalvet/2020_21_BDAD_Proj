.mode	columns
.headers	on
.nullvalue	NULL

-- Melhores jogos ordenados pela média do score das reviews, mostrando essa média e o nº de reviews

SELECT title, score, nr_reviews
FROM Game NATURAL JOIN (
    SELECT game AS id, AVG(score) AS score, COUNT(score) AS nr_reviews
    FROM Review
    GROUP BY game
) ORDER BY score DESC;
