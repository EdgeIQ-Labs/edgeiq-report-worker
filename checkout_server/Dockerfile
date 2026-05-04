FROM python:3.11-slim
WORKDIR /checkout_server
COPY checkout_server/requirements.txt .
RUN pip install -r requirements.txt
COPY checkout_server/.
ENV FLASK_APP=app.py
EXPOSE 10000
CMD ["flask", "run", "--host=0.0.0.0", "--port=10000"]
