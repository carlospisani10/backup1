CREATE DATABASE stats_db


USE stats_db

SELECT * FROM players;
SELECT * FROM seasons_stats;


SELECT players.Player, players.height, players.weight,
players.college, seasons_stats.Year,seasons_stats.Pos, seasons_stats.Tm
FROM players
INNER JOIN seasons_stats
ON players.player= seasons_stats.player

SELECT seasons_stats.player, seasons_stats.Year, seasons_stats.Pos, seasons_stats.`2P%`, 
seasons_stats.`FG%`, seasons_stats.`FT%`, seasons_stats.`TS%`
