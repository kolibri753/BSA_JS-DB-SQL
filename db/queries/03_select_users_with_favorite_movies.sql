SELECT
    U.id,
    U.username,
    ARRAY_AGG (FM.movie_id) AS favorite_movie_ids
FROM
    public."User" U
    LEFT JOIN public."Favorite_Movie" FM ON U.id = FM.user_id
GROUP BY
    U.id,
    U.username
ORDER BY
    U.username;