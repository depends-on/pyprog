FROM python:latest

LABEL name="pyprog"

WORKDIR /usr/src

COPY prog.py pyproject.toml ./

RUN set -x && curl -sSL https://install.python-poetry.org | python3 - && export PATH="/root/.local/bin:$PATH" && poetry install

CMD [ "/root/.local/bin/poetry", "run", "python3", "./prog.py"]
