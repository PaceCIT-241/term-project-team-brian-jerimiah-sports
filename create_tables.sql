-- create_tables.sql
CREATE TABLE teams (
    team_id VARCHAR(10) PRIMARY KEY,
    team_name VARCHAR(100) NOT NULL
);

CREATE TABLE players (
    player_id VARCHAR(20) PRIMARY KEY,
    player_name VARCHAR(100),
    team_id VARCHAR(10),
    FOREIGN KEY (team_id) REFERENCES teams(team_id)
);

CREATE TABLE plays (
    play_id INT PRIMARY KEY,
    game_id INT NOT NULL,
    player_id VARCHAR(20),
    play_description TEXT,
    FOREIGN KEY (player_id) REFERENCES players(player_id)
);
