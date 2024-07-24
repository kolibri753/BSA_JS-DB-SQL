CREATE INDEX IF NOT EXISTS idx_person_country ON "Person" (country_id);

CREATE INDEX IF NOT EXISTS idx_person_photo ON "Person" (primary_photo_id);

CREATE INDEX IF NOT EXISTS idx_user_avatar ON "User" (avatar_id);

CREATE INDEX IF NOT EXISTS idx_movie_director ON "Movie" (director_id);

CREATE INDEX IF NOT EXISTS idx_movie_country ON "Movie" (country_id);

CREATE INDEX IF NOT EXISTS idx_movie_poster ON "Movie" (poster_id);

CREATE INDEX IF NOT EXISTS idx_character_movie ON "Character" (movie_id);

CREATE INDEX IF NOT EXISTS idx_character_actor ON "Character" (actor_id);

CREATE INDEX IF NOT EXISTS idx_favorite_movie_user ON "Favorite_Movie" (user_id);

CREATE INDEX IF NOT EXISTS idx_favorite_movie_movie ON "Favorite_Movie" (movie_id);

CREATE INDEX IF NOT EXISTS idx_movie_genre_movie ON "Movie_Genre" (movie_id);

CREATE INDEX IF NOT EXISTS idx_movie_genre_genre ON "Movie_Genre" (genre_id);