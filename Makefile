IMAGE_NAME=flasktest
TAG=0.1.5

build:
	docker build -t $(IMAGE_NAME):$(TAG) .

buildClean:
	docker build --no-cache -t $(IMAGE_NAME):$(TAG) .

# Note -p flag is needed for you to access the page.
run: 
	docker run -d -p 8888:8888 $(IMAGE_NAME):$(TAG) 
	@echo "Go to http://localhost:8888"