# Django and Docker commands

PROJECT_NAME = project
DJANGO_PROJECT_NAME = project
PROJECT_SRV = ${PROJECT}_SRV

.PHONY = help
.DEFAULT:
	@echo "Usage: "
	@make help

help: ## Show this help.
	# From https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
build: ## Build and start project.
	@docker-compose up --build
dbshell: ## Access Django DB shell inside project container.
	@docker-compose run ${PROJECT_NAME} python3 ${DJANGO_PROJECT_NAME}/manage.py dbshell
djangoshell: ## Access Django shell_plus inside project container.
	@docker-compose run ${PROJECT_NAME} python3 ${DJANGO_PROJECT_NAME}/manage.py shell_plus
lint:  ## Run linting on Project.
	@scripts/code-linter.sh
loaddata: ## Initialize project - create 'admin/superuser' superuser and load initial sample data. Should be run only once at beginning.
	@scripts/loaddata.sh
logs: ## Show project container logs in "follow" mode.
	docker logs -f ${PROJECT_SRV}
osshell:  ## Run a OS shell inside project container.
	@docker-compose run ${PROJECT_NAME} bash
restart:  ## Restart Project.
	@scripts/restart_project.sh
start: ## Start project running in a non-dettached mode.
	@docker-compose up
startclient: ## Start a simple HTML Client Server to consume Projec endpoits. Default port is 8003.
	@clients/html/start_html_client.sh
startbg: ## Start project running in dettached mode - background.
	@docker-compose up -d
stop: ## Stop the running project.
	@docker-compose stop

