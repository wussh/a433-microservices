#!/bin/bash

# Membangun Docker image dengan nama "item-app" dan tag "v1" dari Dockerfile
docker build -t wushie/karsajobs_ui:latest .

# Melakukan login ke Docker Hub
docker login

# Mengunggah Docker image ke Docker Hub
docker push wushie/karsajobs_ui:latest

# Langkah 6: Keluar dari sesi login Docker Hub
docker logout