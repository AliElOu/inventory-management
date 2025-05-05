FROM python:3.12.3-slim


ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN apt-get update && apt-get install -y \
    build-essential \
    default-libmysqlclient-dev \
    pkg-config \
    gcc \
    libssl-dev \
    libffi-dev \
    && rm -rf /var/lib/apt/lists/*
RUN apt-get update && apt-get install -y netcat-openbsd
WORKDIR /app

COPY requirements.txt .

RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8000

COPY wait_for_db.sh /wait_for_db.sh
RUN chmod +x /wait_for_db.sh
ENTRYPOINT ["/wait_for_db.sh"]

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
