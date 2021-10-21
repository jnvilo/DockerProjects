.PHONY: build
REGISTRY_URL=harbor.lab.demostack.xyz
PROJECT=library
IMAGE_NAME=transmission
TAG=0.0.11

.PHONY: build  all

all:  build tag push

build:
	docker build  -t "${REGISTRY_URL}/${PROJECT}/${IMAGE_NAME}:${TAG}" .

pull:   
	docker  pull ${REGISTRY_URL}/${PROJECT}/${IMAGE_NAME}:latest 

tag: 
	docker tag ${REGISTRY_URL}/${PROJECT}/${IMAGE_NAME}:${TAG} ${REGISTRY_URL}/${PROJECT}/${IMAGE_NAME}:latest
 
push:  build
	docker push ${REGISTRY_URL}/${PROJECT}/${IMAGE_NAME}:latest
	docker push ${REGISTRY_URL}/${PROJECT}/${IMAGE_NAME}:${TAG}

run: build
	docker run --rm -it "${REGISTRY_URL}/${PROJECT}/${IMAGE_NAME}:${TAG}" 

bash: build
	docker run --rm -it "${REGISTRY_URL}/${PROJECT}/${IMAGE_NAME}:${TAG}" /bin/bash

