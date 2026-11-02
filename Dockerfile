FROM python:3.10
LABEL maintainer="Dimo Dimov"

COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt

CMD ["python", "app.py"]