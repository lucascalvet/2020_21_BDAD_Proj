.mode	columns
.headers	on
.nullvalue	NULL

-- Lista de jogos em comum entre dois utilizadores

SELECT title FROM (
    SELECT title, count(title) AS title_count 
    FROM (
        SELECT user, title 
        FROM Purchase,Game 
        WHERE game = game.id 
        AND (user = 'lucascs' OR user = 'souto')) 
    GROUP BY title) 
WHERE title_count = 2;
