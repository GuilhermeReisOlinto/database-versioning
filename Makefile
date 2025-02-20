.PHONY: migrate seed reset

migrate-customers:
	./run_migrations_customers.sh

seed-customers:
	./run_seeds_customers.sh

reset-customers: 
	./run_reset_customers.sh

migrate-login:
	./run_migrations_logins.sh

seed-login:
	./run_seeds_logins.sh

reset-login: 
	./run_reset_logins.sh
