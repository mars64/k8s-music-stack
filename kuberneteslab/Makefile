.PHONY: all clean icecast k8s mpd ympd

all: icecast mpd ympd

icecast:
	docker build -t mars64/icecast:latest ./icecast
	docker push mars64/icecast:latest

k8s:
	kubectl apply -f ./k8s/

mpd: 
	docker build -t mars64/mpd:latest ./mpd
	docker push mars64/mpd:latest

ympd:
	docker build -t mars64/ympd:latest ./ympd
	docker push mars64/ympd:latest
