#!/bin/bash
if [ "${DOCKERRUNTIME}" != 1 ]; then
    echo "Error: This script is a running entry for docker runtime, please do NOT run in pure system."
    exit 1
fi

python manage.py celery beat -l info