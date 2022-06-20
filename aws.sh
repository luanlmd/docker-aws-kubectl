#!/bin/bash
docker run --rm -it --entrypoint=aws -v $(pwd):/root/ luanlmd/aws-kubectl "$@"