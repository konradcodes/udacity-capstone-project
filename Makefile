docker-build: docker build --tag=capstone-project .

lint:
	hadolint Dockerfile

all: install lint test
