#!/bin/bash

REQ_VERSION=$1

if [ -z "${REQ_VERSION}" ];
then
    REQ_VERSION=3.10
fi

PYTHON=`pyenv global`

if [[ ${PYTHON} == ${REQ_VERSION}.* ]] ;
then
    echo "Using python ${PYTHON}"
else
    echo "Exiting: found ${PYTHON}, python ${REQ_VERSION} requested"
    exit
fi

pyenv global ${PYTHON}

echo "remove any existing venv"
rm -rf venv

echo "install venv"
python3 --version
python3 -m venv venv
source venv/bin/activate

python3 --version

pip3 install -U pip
pip3 install setuptools
pip3 install wheel

echo "install requirements"
pip3 install -r requirements.txt
