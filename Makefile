##
# Environment Variables
##
NAMESPACE=oliverlundquist
TAG=1.0.0

##
# ANSI Escape Codes
##
ESCAPE=\033
RESET=$(ESCAPE)[0m
GREEN=$(ESCAPE)[32m
BOL=$(ESCAPE)[2K$(ESCAPE)[0G

##
# Commands
##
build:
	@echo "$(GREEN)Building Selenium$(RESET)"
	- @docker build -f docker/build/selenium-php --force-rm=true --rm=true --no-cache --tag=$(NAMESPACE)/selenium-php:$(TAG) .
	@echo "$(GREEN)Building Selenium:$(RESET) Done ✓"

deploy:
	@echo "$(GREEN)Deploying Selenium$(RESET)"
	- @docker push $(NAMESPACE)/selenium-php:$(TAG)
	@echo "$(GREEN)Deploying Selenium:$(RESET) Done ✓"
