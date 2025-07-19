# Togetherly Real-Time Team Collaboration Platform

A real-time team collaboration platform backend built with FastAPI, PostgreSQL, and Redis.

## Features
- JWT Auth (register/login)
- Modular FastAPI structure
- PostgreSQL via SQLAlchemy
- Alembic migrations
- Dockerized

## Quickstart

1. **Clone the repo**
2. **Copy and edit your environment variables:**
   ```sh
   cp .env.example .env
   # Edit .env as needed
   ```
3. **Install dependencies:**
   ```sh
   pip install -r requirements.txt
   ```
4. **Run Alembic migrations:**
   ```sh
   alembic upgrade head
   ```
5. **Start the server:**
   ```sh
   uvicorn app.main:app --reload
   ```

## Docker
```sh
docker build -t togetherly-backend .
docker run -p 8000:8000 --env-file .env togetherly-backend
```

## Folder Structure
- `app/` - FastAPI app code
- `alembic/` - Alembic migration config
- `migrations/` - Alembic migration scripts
- `tests/` - Tests

---
MIT License
