.mode	columns
.headers	on
.nullvalue	NULL

-- Lista de Amigos de um utilizador

SELECT DISTINCT display_name FROM friends NATURAL JOIN user WHERE 
    ((user1 = username OR user2 = username) AND (user1 = 'jfred24' OR user2 = 'jfred24')
    AND username != 'jfred24');
