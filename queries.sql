-- queries.sql

-- Select top 100 rows from each table
SELECT * FROM teams LIMIT 100;
SELECT * FROM players LIMIT 100;
SELECT * FROM plays LIMIT 100;

-- Join: plays + players + teams
SELECT p.play_id, p.play_description, pl.player_name, t.team_name
FROM plays p
JOIN players pl ON p.player_id = pl.player_id
JOIN teams t ON pl.team_id = t.team_id
LIMIT 100;

-- Aggregate: Count of plays per team
SELECT t.team_name, COUNT(*) AS total_plays
FROM plays p
JOIN players pl ON p.player_id = pl.player_id
JOIN teams t ON pl.team_id = t.team_id
GROUP BY t.team_name
ORDER BY total_plays DESC;
