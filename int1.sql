-- Melhores jogos ordenados pela média do score das reviews, mostrando essa média e o nº de reviews
/*
SELECT title, score, nr_reviews
FROM Game NATURAL JOIN (
    SELECT game AS id, AVG(score) AS score, COUNT(score) AS nr_reviews
    FROM Review
    GROUP BY game
) ORDER BY score DESC;
*/

-- Jogos com promoções TODO: Mudar para mostrar tb jogos sem promoções e ordenar por preço
/*
SELECT title, price, percentage AS promotion
FROM Game NATURAL JOIN (
    SELECT game AS id, percentage
    FROM GamePromotion NATURAL JOIN (
        SELECT id AS promotion, percentage
        FROM Promotion
        WHERE starting_date <= strftime('%s','now') AND finishing_date >= strftime('%s','now')
    )
) ORDER BY price;
*/

-- Lista de mensagens no dia 24-05-2020
/*
SELECT sender, receiver, text, datetime(date, 'unixepoch') AS date
FROM MessageReceiver NATURAL JOIN (
    SELECT id as message, text, date, sender 
    FROM Message 
    WHERE date >= strftime('%s', '2020-05-24 00:00:00') AND date <= strftime('%s', '2020-05-24 23:59:59')
);
*/

-- Nº de achievments por utilizador, por jogo
/*
SELECT
SELECT game, COUNT(id) FROM Achievements GROUP BY game;
*/

-- Lista de Amigos de um utilizador
/*
    SELECT DISTINCT display_name FROM friends NATURAL JOIN user WHERE 
        ((user1 = username OR user2 = username) AND (user1 = 'jfred24' OR user2 = 'jfred24')
        AND username != 'jfred24');
*/

-- NUMERO DE X POR Y
-- Numero de jogos por utilizador
/*
    SELECT display_name, username, nr_games
    FROM User NATURAL JOIN (
        SELECT user AS username, COUNT(game) AS nr_games FROM Purchase GROUP BY user
    );
*/

-- Numero de releases por jogo
/*
    SELECT game, COUNT(id) FROM Release GROUP BY game;
*/

-- Numero de releases por OS
/*
    SELECT os, COUNT(release) FROM Releaseos GROUP BY os;
*/

-- Numero de Developers por pais
/*
    SELECT country, count(country) FROM (SELECT name, country FROM Developer,Address where id = fiscal_address) group by country;
*/
-- NUMERO DE X POR Y END


-- Custo médio dos jogos todos da loja
/*
    SELECT AVG(price) FROM Game;
*/

-- Lista de jogos de cada utilizador
/*
    SELECT user, title FROM Purchase,Game Where game = game.id; 
*/

-- Lista de jogos de um utilizador
/*
    SELECT user, title FROM Purchase,Game Where game = game.id and user = 'lucascs'; 
*/

-- Lista de achievements de cada utilizador
/*
    SELECT title, user FROM Achievements, UserAchievements WHERE achievement = achievements.id;
    SELECT id, user FROM Achievements, UserAchievements WHERE achievement = achievements.id;
*/ -- second one shows id instead

--Lista de achievements de cada jogo --shows id instead of game title
/*
    select title, game from Achievements natural join (select id from Game) group by id;
*/

-- Lista de jogos em comum entre dois utilizadores
/*
    SELECT title FROM (
        SELECT title, count(title) AS title_count 
        FROM (
            SELECT user, title 
            FROM Purchase,Game 
            WHERE game = game.id 
            AND (user = 'lucascs' OR user = 'souto')) 
        GROUP BY title) 
    WHERE title_count = 2;
*/

-- Publisher com mais jogos publicados
/*
    SELECT publisher, MAX(game_count) FROM (SELECT publisher, COUNT(game) AS game_count FROM gamepublisher GROUP BY publisher);
*/

-- Lista dos Jogos e Developers de cada Jogo
/*
    SELECT title, publisher, developer FROM game, (gamepublisher NATURAL JOIN gamedeveloper) WHERE game = game.id;
*/

-- Lista dos Jogos publicados por um determinado Publisher, que foram desenvolvidos por um determinado Developer
/*
    SELECT title, publisher, developer FROM game, (gamepublisher NATURAL JOIN gamedeveloper) WHERE game = game.id AND publisher = 'feupgames' AND developer = 'fromsoftware'; 
*/
