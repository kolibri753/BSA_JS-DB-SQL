SELECT
    M.id,
    M.title,
    COUNT(C.actor_id) AS actors_count
FROM
    public."Movie" M
    JOIN public."Character" C ON M.id = C.movie_id
WHERE
    M.release_date >= (CURRENT_DATE - INTERVAL '5 years')
GROUP BY
    M.id,
    M.title
ORDER BY
    M.release_date DESC;