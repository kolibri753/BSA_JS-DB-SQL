-- Delete everything
TRUNCATE TABLE "Favorite_Movie",
"Movie_Genre",
"Character",
"Movie",
"User",
"Person",
"File",
"Country",
"Genre" RESTART IDENTITY CASCADE;

-- Insert sample countries
INSERT INTO
  "Country" (name)
VALUES
  ('USA'),
  ('UK'),
  ('France'),
  ('Germany'),
  ('Canada'),
  ('Australia');

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
  ),
  (
    'avatar2.jpg',
    'image/jpeg',
    'avatars/avatar2.jpg',
    'http://example.com/avatars/avatar2.jpg'
  ),
  (
    'poster2.jpg',
    'image/jpeg',
    'posters/poster2.jpg',
    'http://example.com/posters/poster2.jpg'
  ),
  (
    'avatar3.jpg',
    'image/jpeg',
    'avatars/avatar3.jpg',
    'http://example.com/avatars/avatar3.jpg'
  ),
  (
    'poster3.jpg',
    'image/jpeg',
    'posters/poster3.jpg',
    'http://example.com/posters/poster3.jpg'
  ),
  (
    'avatar4.jpg',
    'image/jpeg',
    'avatars/avatar4.jpg',
    'http://example.com/avatars/avatar4.jpg'
  ),
  (
    'poster4.jpg',
    'image/jpeg',
    'posters/poster4.jpg',
    'http://example.com/posters/poster4.jpg'
  ),
  (
    'avatar5.jpg',
    'image/jpeg',
    'avatars/avatar5.jpg',
    'http://example.com/avatars/avatar5.jpg'
  ),
  (
    'poster5.jpg',
    'image/jpeg',
    'posters/poster5.jpg',
    'http://example.com/posters/poster5.jpg'
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
    'Christopher',
    'Nolan',
    'Director of Inception, Interstellar, and Dunkirk.',
    '1970-07-30',
    'Male',
    1,
    1
  ),
  (
    'Greta',
    'Gerwig',
    'Director of Lady Bird and Little Women.',
    '1983-08-04',
    'Female',
    1,
    1
  ),
  (
    'Timothée',
    'Chalamet',
    'Actor in Call Me by Your Name and Dune.',
    '1995-12-27',
    'Male',
    2,
    3
  ),
  (
    'Zendaya',
    'Coleman',
    'Actress in Dune and Spider-Man series.',
    '1996-09-01',
    'Female',
    1,
    5
  ),
  (
    'Denis',
    'Villeneuve',
    'Director of Dune and Blade Runner 2049.',
    '1967-10-03',
    'Male',
    3,
    1
  ),
  (
    'Jon',
    'Watts',
    'Director of Spider-Man series.',
    '1981-06-28',
    'Male',
    1,
    1
  ),
  (
    'Tom',
    'Holland',
    'Actor in Spider-Man series.',
    '1996-06-01',
    'Male',
    1,
    7
  ),
  (
    'Saoirse',
    'Ronan',
    'Actress in Lady Bird and Little Women.',
    '1994-04-12',
    'Female',
    2,
    9
  ),
  (
    'Leonardo',
    'DiCaprio',
    'Actor in Inception and Titanic.',
    '1974-11-11',
    'Male',
    1,
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
  ),
  (
    'alicejohnson',
    'Alice',
    'Johnson',
    'alice.johnson@example.com',
    'password',
    3
  ),
  (
    'bobbrown',
    'Bob',
    'Brown',
    'bob.brown@example.com',
    'password',
    3
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
    'Dune',
    'A mythic and emotionally charged hero''s journey.',
    165000000,
    '2021-10-22',
    '02:35:00',
    5,
    1,
    2
  ),
  (
    'Spider-Man: No Way Home',
    'Spider-Man''s identity is revealed, bringing his Super Hero responsibilities into conflict with his normal life and putting those he cares about most at risk.',
    200000000,
    '2021-12-17',
    '02:28:00',
    6,
    1,
    4
  ),
  (
    'Little Women',
    'Jo March reflects back and forth on her life, telling the beloved story of the March sisters - four young women each determined to live life on her own terms.',
    40000000,
    '2019-12-25',
    '02:15:00',
    2,
    1,
    6
  ),
  (
    'Inception',
    'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.',
    160000000,
    '2010-07-16',
    '02:28:00',
    1,
    1,
    8
  ),
  (
    'Dune: Part Two',
    'The sequel to Dune, continuing the story of Paul Atreides.',
    205000000,
    '2024-09-03',
    '02:46:00',
    5,
    1,
    10
  );

-- Insert sample characters
INSERT INTO
  "Character" (name, description, role, movie_id, actor_id)
VALUES
  (
    'Paul Atreides',
    'The main character in Dune.',
    'Main',
    1,
    3
  ),
  (
    'MJ',
    'Peter Parker''s girlfriend in Spider-Man.',
    'Main',
    2,
    4
  ),
  (
    'Peter Parker',
    'The main character in Spider-Man.',
    'Main',
    2,
    7
  ),
  (
    'Jo March',
    'The main character in Little Women.',
    'Main',
    3,
    8
  ),
  (
    'Dom Cobb',
    'The main character in Inception.',
    'Main',
    4,
    9
  ),
  (
    'Paul Atreides',
    'The main character in Dune 2.',
    'Main',
    5,
    3
  ),
  (
    'Chani',
    'Fremen wife and legal concubine of protagonist Paul Atreides in Dune 2.',
    'Main',
    5,
    4
  );

-- Insert sample genres
INSERT INTO
  "Genre" (name)
VALUES
  ('Action'),
  ('Drama'),
  ('Science Fiction'),
  ('Adventure'),
  ('Fantasy'),
  ('Romance');

-- Insert sample favorite movies
INSERT INTO
  "Favorite_Movie" (user_id, movie_id)
VALUES
  (1, 1),
  (2, 1),
  (3, 2),
  (4, 2),
  (1, 3),
  (2, 3),
  (3, 4),
  (4, 4);

-- Insert sample movie genres
INSERT INTO
  "Movie_Genre" (movie_id, genre_id)
VALUES
  (1, 3),
  (1, 4),
  (2, 1),
  (2, 4),
  (3, 2),
  (3, 6),
  (4, 1),
  (4, 5),
  (5, 1),
  (5, 3);