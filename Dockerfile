FROM python:3.11-slim

WORKDIR /app

COPY ./app ./app
COPY ./alembic ./alembic
COPY ./migrations ./migrations
COPY requirements.txt ./

RUN pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir -r requirements.txt

ENV PYTHONPATH=/app

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
