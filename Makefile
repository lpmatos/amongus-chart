NAME := amongusdiscord
NAMESPACE := amongusdiscord

build: clean
	helm dependency build .
	helm lint .

install: clean build
	helm upgrade --install $(NAME) . -n $(NAMESPACE)

upgrade: clean build
	helm upgrade --install $(NAME) . -n $(NAMESPACE)

delete:
	helm delete $(NAME) -n $(NAMESPACE)

clean: 
	rm -rf charts/charts
	rm -rf charts/${NAME}*.tgz
	rm -rf charts/requirements.lock

release: clean build
