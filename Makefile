.PHONY: migrate seed reset

migrate customers:
	./run_migrations_customers.sh

seed customers:
	./run_seeds.sh

reset customers: 
	./run_reset.sh

migrate logins:
	./run_migrations_logins.sh