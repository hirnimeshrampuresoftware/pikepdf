#!/bin/bash
set -ex

QPDF_RELEASE=${QPDF_PATTERN//VERSION/$1}
#https://github.com/qpdf/qpdf/releases/download/release-qpdf-10.4.0/qpdf-10.4.0.tar.gz

mkdir qpdf && wget -q $QPDF_RELEASE -O - | tar xz -C qpdf --strip-components=1
