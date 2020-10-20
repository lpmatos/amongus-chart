NAME := amongus-discord
NAMESPACE := amongus-discord
CHART := $(CURDIR)/chart

build: clean
	helm dependency build $(CHART)
	helm lint $(CHART)

install: clean build
	helm upgrade --install $(NAME) $(CHART) -n $(NAMESPACE)

upgrade: clean build
	helm upgrade --install $(NAME) $(CHART) -n $(NAMESPACE)

delete:
	helm delete $(NAME) -n $(NAMESPACE)

clean: 
	rm -rf $(CHART)/charts
	rm -rf $(CHART)/requirements.lock

release: clean build
