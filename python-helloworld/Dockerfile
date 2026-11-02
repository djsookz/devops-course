FROM python:3.10
LABEL maintainer="Dimo Dimov"
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
COPY . .

RUN pip install -r requirements.txt

CMD ["python", "app.py"]