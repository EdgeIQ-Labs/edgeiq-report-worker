FROM python:3.11-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
ENV FLASK_APP=app.py
EXPOSE 10000
CMD ["flask", "run", "--host=0.0.0.0", "--port=10000"]
