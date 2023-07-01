FROM python:3.11.4-slim

WORKDIR /opt/python_service

COPY requirements.txt .
COPY config config
COPY models models
COPY routes routes
COPY static static
COPY templates templates
COPY app.py .

RUN python3 -m pip install -r requirements.txt

EXPOSE 5000

CMD ["python3", "app.py"]
