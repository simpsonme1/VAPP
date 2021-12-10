#!/bin/sh

source activate botenv

cd /home/megan/VAPP

python3 nlu_model.py

python3 -m rasa_core.train -d domain.yml -s data/stories.md -o models/dialogue -c policy.yml

python3 -m rasa_core.run -d models/dialogue -u models/current/nlu --endpoints endpoints.yml


