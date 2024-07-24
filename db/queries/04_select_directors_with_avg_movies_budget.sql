SELECT
    P.id AS director_id,
    CONCAT (P.first_name, ' ', P.last_name) AS director_name,
    AVG(M.budget) AS average_budget
FROM
    public."Person" P
    JOIN public."Movie" M ON P.id = M.director_id
GROUP BY
    P.id,
    P.first_name,
    P.last_name
ORDER BY
    average_budget DESC;