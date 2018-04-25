# Development targets

IMAGE := bopen/ubuntugis-java-pyenv
DOCKERBUILDFLAGS := --pull

image:
	docker build -t $(IMAGE) $(DOCKERBUILDFLAGS) .

shell:
	docker run --rm -ti -v$$(pwd):/src -w/src $(DOCKERFLAGS) $(IMAGE)
