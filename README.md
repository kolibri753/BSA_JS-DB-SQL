# Movie App

## Project Setup

### Prerequisites

- Docker
- Docker Compose

### Setup

1. Clone the repository:
    ```bash
    git clone https://github.com/kolibri753/BSA_JS-DB-SQL.git
    cd movie_app
    ```

2. Create a `.env` file with the following content:
    ```bash
    POSTGRES_DB=movie_db
    POSTGRES_USER=user
    POSTGRES_PASSWORD=password
    ```

3. Start the services:
    ```bash
    make up
    ```

4. Run database migrations:
    ```bash
    make migrate
    ```

5. Seed the database with sample data:
    ```bash
    make seed
    ```

### ER Diagram

![ER Diagram](./docs/er_diagram.md)

### Database Relations

For a detailed description of the relationships between the tables, see [docs/relations.md](./docs/relations.md).

### Queries

SQL queries are located in the `db/queries/` directory.
