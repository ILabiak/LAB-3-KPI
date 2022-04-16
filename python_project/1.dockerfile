FROM python:3.10-buster
RUN python3 -m venv /opt/venv
WORKDIR /
COPY . .
RUN pip install -r requirements/backend.in
RUN pip install -r requirements.txt
CMD uvicorn spaceship.main:app --host 0.0.0.0 --port 8080
