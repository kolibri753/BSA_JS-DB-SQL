-- Create schema if it doesn't exist
CREATE SCHEMA IF NOT EXISTS public;

-- Drop tables if they exist
DROP TABLE IF EXISTS public."Favorite_Movie" CASCADE;

DROP TABLE IF EXISTS public."Movie_Genre" CASCADE;

DROP TABLE IF EXISTS public."Character" CASCADE;

DROP TABLE IF EXISTS public."Genre" CASCADE;

DROP TABLE IF EXISTS public."Movie" CASCADE;

DROP TABLE IF EXISTS public."User" CASCADE;

DROP TABLE IF EXISTS public."Person" CASCADE;

DROP TABLE IF EXISTS public."Country" CASCADE;

DROP TABLE IF EXISTS public."File" CASCADE;

-- Create tables
CREATE TABLE
    public."File" (
        id SERIAL PRIMARY KEY,
        file_name VARCHAR(255) NOT NULL,
        mime_type VARCHAR(50) NOT NULL,
        key VARCHAR(255) NOT NULL,
        url TEXT NOT NULL,
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    );

CREATE TABLE
    public."Country" (
        id SERIAL PRIMARY KEY,
        name VARCHAR(255) NOT NULL,
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    );

CREATE TABLE
    public."Person" (
        id SERIAL PRIMARY KEY,
        first_name VARCHAR(255) NOT NULL,
        last_name VARCHAR(255) NOT NULL,
        biography TEXT,
        date_of_birth DATE,
        gender VARCHAR(50),
        country_id INT REFERENCES public."Country" (id),
        primary_photo_id INT REFERENCES public."File" (id),
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    );

CREATE TABLE
    public."User" (
        id SERIAL PRIMARY KEY,
        username VARCHAR(255) NOT NULL,
        first_name VARCHAR(255),
        last_name VARCHAR(255),
        email VARCHAR(255) NOT NULL,
        password VARCHAR(255) NOT NULL,
        avatar_id INT REFERENCES public."File" (id),
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    );

CREATE TABLE
    public."Movie" (
        id SERIAL PRIMARY KEY,
        title VARCHAR(255) NOT NULL,
        description TEXT,
        budget INT,
        release_date DATE,
        duration INTERVAL,
        director_id INT REFERENCES public."Person" (id),
        country_id INT REFERENCES public."Country" (id),
        poster_id INT REFERENCES public."File" (id),
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    );

CREATE TABLE
    public."Character" (
        id SERIAL PRIMARY KEY,
        name VARCHAR(255) NOT NULL,
        description TEXT,
        role VARCHAR(50),
        movie_id INT REFERENCES public."Movie" (id),
        actor_id INT REFERENCES public."Person" (id),
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    );

CREATE TABLE
    public."Genre" (
        id SERIAL PRIMARY KEY,
        name VARCHAR(255) NOT NULL,
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    );

CREATE TABLE
    public."Favorite_Movie" (
        user_id INT REFERENCES public."User" (id),
        movie_id INT REFERENCES public."Movie" (id),
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        PRIMARY KEY (user_id, movie_id)
    );

CREATE TABLE
    public."Movie_Genre" (
        movie_id INT REFERENCES public."Movie" (id),
        genre_id INT REFERENCES public."Genre" (id),
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        PRIMARY KEY (movie_id, genre_id)
    );