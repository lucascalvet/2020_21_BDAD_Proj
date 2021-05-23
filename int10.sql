.mode	columns
.headers	on
.nullvalue	NULL

--Utilizadores com todos os achievements de um ou mais jogos

SELECT username, display_name
FROM User
WHERE username NOT IN (
SELECT username FROM User, (
    SELECT id AS ach_id
    FROM Achievements
    WHERE game IN (
        SELECT id
        FROM Game
        WHERE title="Tankinix" OR title="Hollow Knight" --this can be any set of games (resulting users have all the achievements of all these games)
    )
)
WHERE ach_id NOT IN (
    SELECT achievement AS got_ach_id
    FROM UserAchievements
    WHERE UserAchievements.user=username
)
);
