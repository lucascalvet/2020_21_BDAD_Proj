.mode	columns
.headers	on
.nullvalue	NULL

-- Lista de mensagens no dia 24-05-2020

SELECT sender, receiver, text, datetime(date, 'unixepoch') AS date
FROM MessageReceiver NATURAL JOIN (
    SELECT id as message, text, date, sender 
    FROM Message 
    WHERE date >= strftime('%s', '2020-05-24 00:00:00') AND date <= strftime('%s', '2020-05-24 23:59:59')
);
