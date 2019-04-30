FROM golang:alpine

RUN apk -U add curl git && \
    curl -L -o /usr/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/v1.13.1/bin/linux/amd64/kubectl && \
    chmod +x /usr/bin/kubectl && \
    CGO_ENABLED=0 go get sigs.k8s.io/kustomize
