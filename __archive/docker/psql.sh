#!/bin/bash
sudo docker run --name cl-postgres -e POSTGRES_PASSWORD=mysecretkeystorepassword -p 5432:5432 -d postgres
