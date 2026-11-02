FROM python:3.15
LABEL maintainer="Dimo Dimov"

COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt

CMD ["python", "app.py"]