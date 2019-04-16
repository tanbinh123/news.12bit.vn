build-site:
	hugo --gc --minify
build: build-site
	mkdir -p functions
	go get ./...
	go build -o functions/crawl-news ./...
