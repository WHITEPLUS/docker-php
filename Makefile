NAME      := php
REGISTRY  := whiteplus/$(NAME)
VERSION   := 5.6

.PHONY: build tag push

build:
	docker build -t $(NAME):$(VERSION) .
	docker build -t $(NAME):$(VERSION)-onbuild ./onbuild

tag: build
	docker tag $(NAME):$(VERSION) $(REGISTRY):$(VERSION)
	docker tag $(NAME):$(VERSION)-onbuild $(REGISTRY):$(VERSION)-onbuild

push: tag
	docker push $(REGISTRY):$(VERSION)
	docker push $(REGISTRY):$(VERSION)-onbuild

