FROM python:3.11-slim
WORKDIR /app
COPY checkout_server/requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt
COPY checkout_server /app
WORKDIR /app
ENV FLASK_APP=app.py
EXPOSE 10000
CMD ["flask", "run", "--host=0.0.0.0", "--port=10000"]
