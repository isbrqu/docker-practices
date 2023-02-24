FROM python:3.7.10-buster
WORKDIR /usr/src/app
COPY requirements.txt .
RUN pip install --upgrade pip
RUN pip install --no-cache-dir --requirement requirements.txt
COPY src .
