[![CircleCI](https://circleci.com/gh/carlosolivaresescom/project-ml-microservice-kubernetes/tree/main.svg?style=svg)](https://circleci.com/gh/carlosolivaresescom/project-ml-microservice-kubernetes/tree/main)

## Project Overview

Operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls.

---

## Setup the Environment

- Create a virtualenv with Python 3.7 and activate it.

```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host.
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
.\devops\Scripts\activate
```

- Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone: `python app.py`
2. Run in Docker: `./run_docker.sh`
3. Run in Kubernetes: `./run_kubernetes.sh`

### Kubernetes Steps

- Setup and Configure Docker locally
- Setup and Configure Kubernetes locally
- Create Flask app in Container
- Run via kubectl

## Files in repository

- Dockerfile.- Has the required commands run app.py in a container
- upload_docker.sh.- Upload the local image to dockerhub.
- run_docer.sh.- Run docker locally
- app.py.- Flask app that makes a prediction
- make_prediction.sh.- Calls flask app POST endpoint
- Makefile.- Has instructions on environment setup and lint tests
