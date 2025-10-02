#!/bin/bash

# =============================================================================
# DATABASE WAIT SCRIPT
# Waits for MySQL database to be ready before starting the application
# =============================================================================

set -e

host="$1"
port="$2"
shift 2
cmd="$@"

# Default values if not provided
DB_HOST=${host:-db}
DB_PORT=${port:-3306}

echo "⏳ Waiting for MySQL database at $DB_HOST:$DB_PORT..."

# Wait for database to be ready
until nc -z "$DB_HOST" "$DB_PORT"; do
  echo "🔄 Database is unavailable - sleeping for 1 second"
  sleep 1
done


# Import initial data if this is the first run
INIT_FLAG_FILE="/app/db_initialized.txt"
if [ ! -f "$INIT_FLAG_FILE" ]; then
    echo "📂 First run detected - running migrations and importing initial data from inventory.sql..."
    echo "✅ Database is ready! Running migrations..."

    # Run Django migrations
    echo "📦 Creating migrations for inventory app..."
    python manage.py makemigrations inventory

    echo "🔄 Applying migrations for inventory app..."
    python manage.py migrate inventory

    echo "📦 Creating migrations for transactions app..."
    python manage.py makemigrations transactions

    echo "🔄 Applying migrations for transactions app..."
    python manage.py migrate transactions

    echo "📦 Creating general migrations..."
    python manage.py makemigrations

    echo "🔄 Applying all migrations..."
    python manage.py migrate
    
    # Import the SQL file into the database
    echo "📂 Importing initial data from inventory.sql..."
    mysql --ssl=0 --default-character-set=utf8 -h "$DB_HOST" -P "$DB_PORT" -u "${MYSQL_USER:-root}" -p"${MYSQL_ROOT_PASSWORD:-root}" "${MYSQL_DATABASE:-inventory}" < inventory.sql    
    
    # Create flag file to indicate database has been initialized (only if everything succeeded)
    touch "$INIT_FLAG_FILE"
    echo "✅ Initial data imported successfully!"
else
    echo "ℹ️ Database already initialized - skipping initial data import"
fi

echo "✅ All migrations completed! Starting application..."

# Execute the main command
exec $cmd
