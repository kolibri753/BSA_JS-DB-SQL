SELECT
    P.id,
    P.first_name,
    P.last_name,
    COALESCE(SUM(M.budget), 0) AS total_movies_budget
FROM
    public."Person" P
    JOIN public."Character" C ON P.id = C.actor_id
    JOIN public."Movie" M ON C.movie_id = M.id
GROUP BY
    P.id,
    P.first_name,
    P.last_name
ORDER BY
    total_movies_budget DESC;