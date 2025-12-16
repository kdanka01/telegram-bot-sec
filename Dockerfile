FROM python:3.12-slim

RUN useradd -m botuser
WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY bot/ bot/

USER botuser

CMD ["python", "bot/main.py"]
