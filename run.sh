#!/bin/bash

cd /home/thuannd/Repository/local_llm
docker compose up --build -d

docker exec $(docker ps -qf "name=ollama") ollama run llama3.2