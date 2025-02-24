.PHONY: migrate seed reset

migrate-customers:
	./cmd/run_migrations_customers.sh

seed-customers:
	./cmd/run_seeds_customers.sh

reset-customers: 
	./cmd/run_reset_customers.sh

migrate-login:
	./cmd/run_migrations_logins.sh

seed-login:
	./cmd/run_seeds_logins.sh

reset-login: 
	./cmd/run_reset_logins.sh
