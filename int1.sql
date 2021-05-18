--Lista de Amigos de um utilizador
/*
    SELECT DISTINCT display_name FROM friends NATURAL JOIN user WHERE 
        ((user1 = username OR user2 = username) AND (user1 = 'jfred24' OR user2 = 'jfred24')
        AND username != 'jfred24');
*/


-- NUMERO DE X POR Y
-- Numero de jogos por utilizador
/*
    SELECT user, COUNT(game) FROM Purchase GROUP BY user;
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

-- Lista de jogos em comum entre dois utilizadores
/*
    SELECT title from (SELECT title, count(title) as title_count from (SELECT user, title FROM Purchase,Game Where game = game.id and (user = 'lucascs' or user = 'souto')) GROUP BY title) where title_count = 2;
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







