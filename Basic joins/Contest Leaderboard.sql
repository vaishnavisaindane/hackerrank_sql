WITH cte1 AS (
    SELECT h.hacker_id, s.challenge_id, h.name, MAX(s.score) AS max_score
    FROM Hackers h
    INNER JOIN Submissions s
    ON h.hacker_id = s.hacker_id
    GROUP BY h.hacker_id, s.challenge_id, h.name
)
SELECT hacker_id, name, SUM(max_score) AS total_score
FROM cte1
WHERE max_score <> 0
GROUP BY hacker_id, name
ORDER BY total_score DESC, hacker_id;

https://youtu.be/7ifJ66jI71E?si=C_G16B0hKo1MQkpf
