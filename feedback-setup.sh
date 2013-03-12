#!/bin/bash

sudo killall gunicorn

sudo rm -rf feedback_app

git clone https://github.com/ungarst/feedback_app.git
cd feedback_app

curl -O https://raw.github.com/pypa/virtualenv/master/virtualenv.py
python virtualenv.py venv
. venv/bin/activate

pip install -r requirements.txt
nohup venv/bin/gunicorn -w 4 app:app > /dev/null 2>&1 &