#!/bin/bash

apptainer exec -B /local --env PYTHONPATH=`pwd`:`pwd`/analysis /path/to/lpa.simg "$@"