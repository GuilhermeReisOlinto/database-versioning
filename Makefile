.PHONY: migrate seed reset

migrate:
	./run_migrations.sh

seed:
	./run_seeds.sh

reset: 
	./run_reset.sh