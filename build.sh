#!/bin/bash
set -e

if [[ -z $1 ]];then
    cpu_or_gpu="gpu"
else
    cpu_or_gpu=$1
fi

if [[ $cpu_or_gpu == "gpu" ]];then
    docker build -t dr-sagemaker-base:cuda9 -f Dockerfile-matt-gpu-base-cuda9.gpu .
    docker build -t dr-sagemaker:nvidia -f Dockerfile-matt.gpu .
elif [[ $cpu_or_gpu == "cpu" ]];then
    docker build -t dr-sagemaker-base:cpu -f Dockerfile-cpu-base.cpu .
    docker build -t dr-sagemaker:cpu -f Dockerfile.cpu .
fi