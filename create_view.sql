-- create_view.sql
CREATE VIEW view_top_players_by_playcount AS
SELECT player_name, COUNT(*) AS play_count
FROM plays
JOIN players ON plays.player_id = players.player_id
GROUP BY player_name;
