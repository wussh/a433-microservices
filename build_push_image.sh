#!/bin/bash

# Membangun Docker image dengan nama "item-app" dan tag "v1" dari Dockerfile
docker build -t item-app:v1 .

# Menampilkan daftar Docker images yang ada di lokal
docker images

# Mengganti nama Docker image agar sesuai dengan format Docker Hub
docker tag item-app:v1 wushie/item-app:v1

# Melakukan login ke Docker Hub
docker login

# Mengunggah Docker image ke Docker Hub
docker push wushie/item-app:v1

# Langkah 6: Keluar dari sesi login Docker Hub
docker logout
