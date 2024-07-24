SELECT
    M.id,
    M.title,
    M.release_date,
    M.duration,
    M.description,
    json_build_object (
        'id',
        F.id,
        'file_name',
        F.file_name,
        'mime_type',
        F.mime_type,
        'key',
        F.key,
        'url',
        F.url
    ) AS poster,
    json_build_object (
        'id',
        P.id,
        'first_name',
        P.first_name,
        'last_name',
        P.last_name
    ) AS director
FROM
    public."Movie" M
    JOIN public."File" F ON M.poster_id = F.id
    JOIN public."Person" P ON M.director_id = P.id
    JOIN public."Movie_Genre" MG ON M.id = MG.movie_id
    JOIN public."Genre" G ON MG.genre_id = G.id
WHERE
    M.country_id = 1
    AND M.release_date >= '2022-01-01'
    AND M.duration > '02:15:00'
    AND G.name IN ('Action', 'Drama')
GROUP BY
    M.id,
    F.id,
    P.id;