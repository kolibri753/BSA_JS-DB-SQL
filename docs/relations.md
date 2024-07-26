### Database Relations

**User ||--o{ File : "has avatar"**

- **Type:** One-to-Many (Optional on the many side)
- **Description:** Each User can have one File as an avatar, but a File (avatar) can exist without being associated with a User.

**Movie ||--o{ File : "has poster"**

- **Type:** One-to-Many (Optional on the many side)
- **Description:** Each Movie can have one File as a poster, but a File (poster) can exist without being associated with a Movie.

**Person ||--o{ File : "has primary photo"**

- **Type:** One-to-Many (Optional on the many side)
- **Description:** Each Person can have one File as a primary photo, but a File (primary photo) can exist without being associated with a Person.

**Person ||--|{ Movie : "directs"**

- **Type:** One-to-Many (Mandatory on both sides)
- **Description:** Each Person (director) must direct at least one Movie, and each Movie must have a director.

**Person ||--|{ Character : "plays"**

- **Type:** One-to-Many (Mandatory on both sides)
- **Description:** Each Person (actor) must play at least one Character, and each Character must have an actor.

**Movie ||--|{ Character : "features"**

- **Type:** One-to-Many (Mandatory on both sides)
- **Description:** Each Movie must feature at least one Character, and each Character must belong to a Movie.

**Movie ||--o| Favorite_Movie : "is favorited by"**

- **Type:** One-to-Many (Optional on the one side, mandatory on the many side)
- **Description:** Each Movie can be favorited by multiple users, but each Favorite_Movie must be associated with a Movie.
- **Many-to-Many Handling:** The `Favorite_Movie` table handles the many-to-many relationship between Users and Movies.

**User ||--o{ Favorite_Movie : "favorites"**

- **Type:** One-to-Many (Optional on the many side)
- **Description:** Each User can favorite multiple movies, but each Favorite_Movie must be associated with a User.

**Movie ||--o| Movie_Genre : "has"**

- **Type:** One-to-Many (Optional on the one side, mandatory on the many side)
- **Description:** Each Movie can have multiple genres, but each Movie_Genre must be associated with a Movie.
- **Many-to-Many Handling:** The `Movie_Genre` table handles the many-to-many relationship between Movies and Genres.

**Genre ||--|{ Movie_Genre : "is associated with"**

- **Type:** One-to-Many (Mandatory on both sides)
- **Description:** Each Genre must be associated with at least one Movie, and each Movie_Genre must be associated with a Genre.

**Movie ||--|{ Country : "is made in"**

- **Type:** One-to-Many (Mandatory on both sides)
- **Description:** Each Movie must be made in one Country, and each Country must have at least one Movie.

**Person ||--|{ Country : "is from"**

- **Type:** One-to-Many (Mandatory on both sides)
- **Description:** Each Person must be from one Country, and each Country must have at least one Person.
