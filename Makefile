.ONESHELL: # Applies to every targets in the file!

PWD = $(shell pwd)
PROJECT_HOME = $(PWD)
PWD = $(shell pwd)

# Test ***Hello starts***
hello:
	echo "hello world";
# Test ***Hello ends***

set-dev-container-template:
	cd $(PROJECT_HOME) && \
	mkdir .devcontainer && \
	echo "The dev-container-template-vault contents" && \
	ls -lrta ./dev-container-template-vault && \
	cp -rf ./dev-container-template-vault/* ./.devcontainer && \
	echo "The .devcontainer template vault contents" && \
	ls -lrta ./.devcontainer


get-dev-container-template:
	cd $(PROJECT_HOME) && \
	echo "The .devcontainer contents" && \
	ls -lrta .devcontainer && \
	cp -rf ./.devcontainer/* ./dev-container-template-vault && \
	echo "The devcontainer template vault contents" && \
	ls -lrta ./dev-container-template-vault