#!/bin/bash

# Build image dengan menggunakan nama 'item-app:v1'
docker build -t item-app:v1 .

# List image yang ada di registry local
docker images

# Mengubah nama image agar bisa dipush ke ghcr.io
docker tag item-app:v1 ghcr.io/yan-21/item-app:v1

# Login docker ke ghcr.io
echo $GHCR_TOKEN | docker login ghcr.io -u yan-21 --password-stdin

# Push Images ke registry ghcr
docker push ghcr.io/yan-21/item-app:v1
