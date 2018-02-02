#!/usr/bin/env bash

function build {
    ALPINE=$1
    PYTHON=$2
    SCIKIT=$3
    PANDAS=$4

    dir="python-${PYTHON}/alpine-${ALPINE}/scikit-${SCIKIT}"
    base="${PYTHON}-alpine${ALPINE}"

    mkdir -p ${dir}

    cat <<-EOF > ${dir}/Dockerfile
FROM python:${base}

RUN apk --no-cache add lapack \
    && apk --no-cache add --virtual builddeps g++ gfortran musl-dev lapack-dev \
    && pip install numpy \
    && pip install scipy \
    && pip install scikit-learn==${SCIKIT} pandas==${PANDAS} \
    && apk del builddeps
    && rm -rf /root/.cache
EOF

    docker build -t publysher/alpine-machine-learning:scikit${SCIKIT}-pandas${PANDAS}-python${PYTHON}-alpine${ALPINE} ${dir}
}

build 3.7 3.6 0.19.1 0.22.0