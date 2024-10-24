#!/bin/bash
if ! command -v nvidia-smi &> /dev/null
then
    docker compose -f docker-compose-cpu.yaml up --build -d
else
    docker compose up --build -d
fi

docker exec $(docker ps -qf "name=ollama") ollama run llama3.2