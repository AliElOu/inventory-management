FROM python:3.12-slim

WORKDIR /app

RUN apt-get update && apt-get install -y \
    default-libmysqlclient-dev \
    build-essential \
    pkg-config \
    netcat-openbsd \
    mariadb-client \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

# Convert line endings and make the wait script executable
RUN sed -i 's/\r$//' wait_for_db.sh && chmod +x wait_for_db.sh

EXPOSE 8000

CMD ["bash", "./wait_for_db.sh", "db", "3306", "python", "manage.py", "runserver", "0.0.0.0:8000"]