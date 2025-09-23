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

echo "✅ Database is ready! Starting application..."

# Execute the main command
exec $cmd
