#!/bin/bash
docker run --rm -it -v $(pwd):/root/ luanlmd/aws-kubectl "$@"