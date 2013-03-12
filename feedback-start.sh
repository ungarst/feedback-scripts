#!/bin/bash

sudo killall gunicorn

cd feedback_app
nohup venv/bin/gunicorn -w 4 app:app > /dev/null 2>&1 &
