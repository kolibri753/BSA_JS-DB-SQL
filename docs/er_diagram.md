# ER Diagram

```mermaid
erDiagram
    User {
        int id PK
        string username
        string first_name
        string last_name
        string email
        string password
        int avatar_id FK
        timestamp created_at
        timestamp updated_at
    }
    File {
        int id PK
        string file_name
        string mime_type
        string key
        string url
        timestamp created_at
        timestamp updated_at
    }
    Movie {
        int id PK
        string title
        text description
        int budget
        date release_date
        interval duration
        int director_id FK
        int country_id FK
        int poster_id FK
        timestamp created_at
        timestamp updated_at
    }
    Person {
        int id PK
        string first_name
        string last_name
        text biography
        date date_of_birth
        string gender
        int country_id FK
        int primary_photo_id FK
        timestamp created_at
        timestamp updated_at
    }
    Character {
        int id PK
        string name
        text description
        string role
        int movie_id FK
        int actor_id FK
        timestamp created_at
        timestamp updated_at
    }
    Genre {
        int id PK
        string name
        timestamp created_at
        timestamp updated_at
    }
    Country {
        int id PK
        string name
        timestamp created_at
        timestamp updated_at
    }
    Favorite_Movie {
        int user_id FK
        int movie_id FK
        timestamp created_at
        timestamp updated_at
    }
    Movie_Genre {
        int movie_id FK
        int genre_id FK
        timestamp created_at
        timestamp updated_at
    }

    User ||--o{ File : "has avatar"
    Movie ||--o{ File : "has poster"
    Person ||--o{ File : "has primary photo"
    Person ||--|{ Movie : "directs"
    Person ||--|{ Character : "plays"
    Movie ||--|{ Character : "features"
    Movie ||--o| Favorite_Movie : "is favorited by"
    User ||--o{ Favorite_Movie : "favorites"
    Movie ||--o| Movie_Genre : "has"
    Genre ||--|{ Movie_Genre : "is associated with"
    Movie ||--|{ Country : "is made in"
    Person ||--|{ Country : "is from"
