[![CircleCI](https://circleci.com/gh/circleci/circleci-docs.svg?style=shield)](https://circleci.com/gh/circleci/circleci-docs)

## Project Overview

Operationalize a a pre-trained `sklearn` machine learning model as a microservice API. The model has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project operationalizes a Python flask app — in a provided file, `app.py` — that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### File Descriptions

* `model_data/` contains the raw Boston housing data and the trained model
* `output_txt_files` contains sample output after running the app as a Docker container or on a Kubernetes cluster
* `app.py` source code for the application
* `Dockerfile` to build the Docker image
* `make_predictions.sh` sample code for calling the API to make predictions
* `Makefile` includes instructions on environment setup and lint tests
* `requirements.txt` contains Python environment requirements
* `run_docker.sh` contains commands to build the Docker image, list current Docker images, and run the containerized application.
* `run_kubernetes.sh` contains commands to run the application on Kubernetes (you need to have a Kubernetes cluster running, _e.g._ `minikube start`)
* `upload_docker.sh` contains commands to tag and upload the image on DockerHub (__Note:__ This requires you to have `$DOCKERHUB_USER` and `$DOCKERHUB_PASSWORD` defined in your environment)

---

## Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies
* Install `minikube` and `kubectl` to deploy the application on Kubernetes

> __Note__: To run the application on Kubernetes you need to start a cluster. You can run a cluster locally using `minikube start`.

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  
   * `minikube start`
   * `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via `kubectl`
