.PHONY: build
REGISTRY_URL=harbor.lnxsystems.com
PROJECT=library
IMAGE_NAME=python
TAG=3.9.2-rockylinux.8

.PHONY: build  all

all:  build tag push

build:
	docker build -t "${REGISTRY_URL}/${PROJECT}/${IMAGE_NAME}:${TAG}" -f "Dockerfile-${TAG}" .

pull:   
	docker  pull ${REGISTRY_URL}/${PROJECT}/${IMAGE_NAME}:latest 

tag: 
	docker tag ${REGISTRY_URL}/${PROJECT}/${IMAGE_NAME}:${TAG} ${REGISTRY_URL}/${PROJECT}/${IMAGE_NAME}:latest
 
push:  build
	docker push ${REGISTRY_URL}/${PROJECT}/${IMAGE_NAME}:latest
	docker push ${REGISTRY_URL}/${PROJECT}/${IMAGE_NAME}:${TAG}
