FROM python:3.10-alpine
WORKDIR /
COPY requirements ./requirements/
COPY requirements.txt /
RUN python3 -m venv /opt/venv
RUN apk add build-base
RUN pip install --no-cache-dir -r requirements/backend.in
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
CMD uvicorn spaceship.main:app --host 0.0.0.0 --port 8080
