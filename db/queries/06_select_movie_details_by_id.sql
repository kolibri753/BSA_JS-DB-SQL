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
        D.id,
        'first_name',
        D.first_name,
        'last_name',
        D.last_name,
        'photo',
        json_build_object (
            'id',
            DF.id,
            'file_name',
            DF.file_name,
            'mime_type',
            DF.mime_type,
            'key',
            DF.key,
            'url',
            DF.url
        )
    ) AS director,
    json_agg (
        json_build_object (
            'id',
            A.id,
            'first_name',
            A.first_name,
            'last_name',
            A.last_name,
            'photo',
            json_build_object (
                'id',
                AF.id,
                'file_name',
                AF.file_name,
                'mime_type',
                AF.mime_type,
                'key',
                AF.key,
                'url',
                AF.url
            )
        )
    ) AS actors,
    json_agg (json_build_object ('id', G.id, 'name', G.name)) AS genres
FROM
    public."Movie" M
    JOIN public."File" F ON M.poster_id = F.id
    JOIN public."Person" D ON M.director_id = D.id
    JOIN public."File" DF ON D.primary_photo_id = DF.id
    JOIN public."Character" C ON M.id = C.movie_id
    JOIN public."Person" A ON C.actor_id = A.id
    JOIN public."File" AF ON A.primary_photo_id = AF.id
    JOIN public."Movie_Genre" MG ON M.id = MG.movie_id
    JOIN public."Genre" G ON MG.genre_id = G.id
WHERE
    M.id = 1
GROUP BY
    M.id,
    F.id,
    D.id,
    DF.id;