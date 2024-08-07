FROM python:3.12
WORKDIR /app
COPY ./requirements.txt requirements.txt 
RUN pip install --no-cache-dir --upgrade -r requirements.txt
COPY . .
CMD ["gunicorn", "--bind", "0.0.0.0:8080", "app:flask_app"]