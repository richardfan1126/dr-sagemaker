#!/bin/bash
set -e
docker build -t mattcamp/dr-sagemaker-base:cuda9 -f Dockerfile-matt-gpu-base-cuda9.gpu
docker build -t mattcamp/dr-sagemaker:nvidia -f Dockerfile-matt.gpu