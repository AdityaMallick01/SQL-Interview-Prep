-- Problem: Game Play Analysis IV
-- Link: https://leetcode.com/problems/game-play-analysis-iv/

SELECT 
    ROUND(
        COUNT(DISTINCT a.player_id) * 1.0 / 
        (SELECT COUNT(DISTINCT player_id) FROM Activity),
        2
    ) AS fraction
FROM Activity a
JOIN (
    SELECT player_id, MIN(event_date) AS first_date
    FROM Activity
    GROUP BY player_id
) b
ON a.player_id = b.player_id
AND a.event_date = b.first_date + INTERVAL 1 DAY;