FROM python:latest

LABEL name="pyprog"

WORKDIR /usr/src

COPY prog.py requirements.txt ./

RUN set -x && python3 -m venv .venv && . .venv/bin/activate && pip install -r requirements.txt

CMD [ ".venv/bin/python3", "./prog.py"]
