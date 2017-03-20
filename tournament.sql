-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

-- Create player table
CREATE TABLE players (
  id SERIAL PRIMARY KEY,
  name text NOT NULL
);

-- Create match table
CREATE TABLE matches (
  id SERIAL PRIMARY KEY,
  winner SERIAL REFERENCES players(id) NOT NULL,
  loser SERIAL REFERENCES players(id) NOT NULL
);

-- Creates a view playerstanding table, that will be sorted by total_wins and
-- and then by total_matches
CREATE VIEW playerstanding AS
SELECT players.id, players.name,
(SELECT count(matches.winner)
    FROM matches
    WHERE players.id = matches.winner) AS win,
(SELECT count(matches.id)
    FROM matches
    WHERE players.id = matches.winner
    OR players.id = matches.loser) AS match
FROM players
ORDER BY win DESC,match DESC;
