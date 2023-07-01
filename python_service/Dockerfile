FROM python:3.11.4-slim

WORKDIR /opt/python_service

COPY . .

RUN python3 -m pip install -r requirements.txt

EXPOSE 5000

CMD ["python3", "app.py"]
