# LABEL Maintainer="airdb team <info@airdb.com>"  Description="https://github.com/airdb"

#PACKAGE := demo
PACKAGE := osinit

all: help

help: ## Show help messages
	@echo "Container - ${PACKAGE}"
	@echo
	@echo "Usage:\tmake COMMAND"
	@echo
	@echo "Commands:"
	@sed -n '/##/s/\(.*\):.*##/  \1#/p' ${MAKEFILE_LIST} | grep -v "MAKEFILE_LIST" | column -t -c 2 -s '#'

edit: ## Edit brew package
	brew edit airdb/taps/${PACKAGE}

update: ## Updatw brew taps
	brew update

test: ## Install brew package
	brew install airdb/taps/${PACKAGE}
       
reinstall: ## Reinstall brew package
	brew reinstall ${PACKAGE}

install: ## Install brew package
	brew install airdb/taps/${PACKAGE}

info: ## Package information
	brew info airdb/taps/${PACKAGE}
	brew list airdb/taps/${PACKAGE}
