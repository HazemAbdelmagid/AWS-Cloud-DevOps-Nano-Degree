## The Makefile includes instructions on environment setup and lint tests
# Create and activate a virtual environment
# Install dependencies in requirements.txt
# Dockerfile should pass hadolint
# app.py should pass pylint
# (Optional) Build a simple integration test

setup:
	# Create python virtualenv & source it
	# source ~/.devops/bin/activate
	# The below commands need to be run on Cloud9 environment, to run it locally remove the environment dir from the alias command.
	python3 -m venv ~/.devops
	echo "#Alias Configurations" >> ~/.bashrc
#	echo "alias devops='cd ~/environment/ML-Microservices-Kubernetes && source ~/.devops/bin/activate'" >> ~/.bashrc
	# echo "alias devops='cd ~/environment/ML-Microservices-Kubernetes && source ~/.devops/bin/activate'" >> ~/.bashrc
	echo "alias devops='cd ~/ML-Microservices-Kubernetes && source ~/.devops/bin/activate'" >> ~/.bashrc
	source ~/.bashrc
	
install:
	# This should be run from inside a virtualenv
	pip install --upgrade pip &&\
	pip install -r requirements.txt
	wget -O ./hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 &&\
    chmod +x ./hadolint
	
test:
	# Additional, optional, tests could go here
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb

lint:
	# See local hadolint install instructions:   https://github.com/hadolint/hadolint
	# This is linter for Dockerfiles
	./hadolint Dockerfile
	# This is a linter for Python source code linter: https://www.pylint.org/
	# This should be run from inside a virtualenv
	pylint --disable=R,C,W1203 app.py

all: install lint test
