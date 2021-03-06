#!/bin/bash

set -x
set -e

export PYTHONUNBUFFERED="True"
export CUDA_VISIBLE_DEVICES=$1

time ./tools/test_synthesis_lov_one.py --gpu 0 \
  --cad data/LOV/models.txt \
  --pose data/LOV/poses.txt
