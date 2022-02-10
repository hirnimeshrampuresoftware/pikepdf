#!/bin/bash
set -ex

QPDF_RELEASE=https://github.com/qpdf/qpdf/archive/refs/tags/release-qpdf-10.4.0.tar.gz
#${QPDF_PATTERN//VERSION/$1}

mkdir qpdf && wget -q $QPDF_RELEASE -O - | tar xz -C qpdf --strip-components=1
