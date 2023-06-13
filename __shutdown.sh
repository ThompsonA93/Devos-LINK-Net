#!/bin/bash
sudo docker ps

sudo docker stop cl-postgres
sudo docker stop chainlink

sudo docker rm cl-postgres
sudo docker rm chainlink

sudo docker ps