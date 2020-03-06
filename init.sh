#!/bin/bash
if [ ! -e venv ]; then
    virtualenv -p /usr/bin/python3 venv
fi

source venv/bin/activate
pushd dependencies/sagemaker-containers
python setup.py sdist
popd

pushd dependencies/sagemaker-tensorflow-container
python setup.py sdist
popd

cp dependencies/sagemaker-containers/dist/*.tar.gz ./
cp dependencies/sagemaker-tensorflow-container/dist/*.tar.gz ./