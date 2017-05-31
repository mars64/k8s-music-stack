# k8s-music-stack

k8s specs for Icecast, mpd, ympd, sima - based on https://github.com/vitiMan/docker-music-stack

These containers have been configured to serve everything over 'localhost' -- minikube/alpine/kube-dns continue to have issues resolving internal cluster service names from within pods, so this was the easiest way to make it work.
