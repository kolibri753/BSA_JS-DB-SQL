-- Insert sample countries
INSERT INTO
  "Country" (name)
VALUES
  ('USA'),
  ('UK'),
  ('France'),
  ('Germany');

-- Insert sample files
INSERT INTO
  "File" (file_name, mime_type, key, url)
VALUES
  (
    'avatar1.jpg',
    'image/jpeg',
    'avatars/avatar1.jpg',
    'http://example.com/avatars/avatar1.jpg'
  ),
  (
    'poster1.jpg',
    'image/jpeg',
    'posters/poster1.jpg',
    'http://example.com/posters/poster1.jpg'
  );

-- Insert sample persons
INSERT INTO
  "Person" (
    first_name,
    last_name,
    biography,
    date_of_birth,
    gender,
    country_id,
    primary_photo_id
  )
VALUES
  (
    'John',
    'Doe',
    'Actor and director.',
    '1970-01-01',
    'Male',
    1,
    1
  ),
  (
    'Jane',
    'Smith',
    'Award-winning actress.',
    '1980-02-01',
    'Female',
    2,
    1
  );

-- Insert sample users
INSERT INTO
  "User" (
    username,
    first_name,
    last_name,
    email,
    password,
    avatar_id
  )
VALUES
  (
    'johndoe',
    'John',
    'Doe',
    'john.doe@example.com',
    'password',
    1
  ),
  (
    'janesmith',
    'Jane',
    'Smith',
    'jane.smith@example.com',
    'password',
    1
  );

-- Insert sample movies
INSERT INTO
  "Movie" (
    title,
    description,
    budget,
    release_date,
    duration,
    director_id,
    country_id,
    poster_id
  )
VALUES
  (
    'Sample Movie',
    'This is a sample movie.',
    1000000,
    '2022-01-01',
    '02:30:00',
    1,
    1,
    2
  );

-- Insert sample characters
INSERT INTO
  "Character" (name, description, role, movie_id, actor_id)
VALUES
  (
    'Sample Character',
    'This is a sample character.',
    'Main',
    1,
    1
  );

-- Insert sample genres
INSERT INTO
  "Genre" (name)
VALUES
  ('Action'),
  ('Drama');

-- Insert sample favorite movies
INSERT INTO
  "Favorite_Movie" (user_id, movie_id)
VALUES
  (1, 1),
  (2, 1);

-- Insert sample movie genres
INSERT INTO
  "Movie_Genre" (movie_id, genre_id)
VALUES
  (1, 1),
  (1, 2);