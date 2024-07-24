.PHONY: up down migrate seed run_queries

up:
	docker-compose up -d

down:
	docker-compose down

migrate:
	docker exec -i movie_db psql -U user -d movie_db -f /docker-entrypoint-initdb.d/migrations/01_create_tables.sql
	docker exec -i movie_db psql -U user -d movie_db -f /docker-entrypoint-initdb.d/migrations/02_create_indexes.sql

seed:
	docker exec -i movie_db psql -U user -d movie_db -f /docker-entrypoint-initdb.d/migrations/03_insert_sample_data.sql

run_queries:
	docker exec -i movie_db psql -U user -d movie_db -f /docker-entrypoint-initdb.d/queries/01_select_actors_with_total_movies_budget.sql
	docker exec -i movie_db psql -U user -d movie_db -f /docker-entrypoint-initdb.d/queries/02_select_movies_with_actors_count_last_5_years.sql
	docker exec -i movie_db psql -U user -d movie_db -f /docker-entrypoint-initdb.d/queries/03_select_users_with_favorite_movies.sql
	docker exec -i movie_db psql -U user -d movie_db -f /docker-entrypoint-initdb.d/queries/04_select_directors_with_avg_movies_budget.sql
	docker exec -i movie_db psql -U user -d movie_db -f /docker-entrypoint-initdb.d/queries/05_select_movies_with_criteria.sql
	docker exec -i movie_db psql -U user -d movie_db -f /docker-entrypoint-initdb.d/queries/06_select_movie_details_by_id.sql