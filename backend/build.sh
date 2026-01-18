#!/usr/bin/env bash
# exit on error
set -o errexit

# Ensure we are in the root or handle paths correctly
# render.yaml runs this script from root

pip install -r requirements.txt

cd backend
python manage.py collectstatic --no-input
python manage.py migrate
