from fastapi import FastAPI
import mysql.connector
import os

app = FastAPI()

# Connect to MySQL using environment variables
def get_db_connection():
    return mysql.connector.connect(
        host=os.environ.get("DB_HOST", "localhost"),
        user=os.environ.get("DB_USER", "user"),
        password=os.environ.get("DB_PASSWORD", "password"),
        database=os.environ.get("DB_NAME", "mydb")
    )

@app.get("/")
def read_root():
    try:
        conn = get_db_connection()
        cursor = conn.cursor()
        cursor.execute("SELECT NOW();")  # simple test query
        result = cursor.fetchone()
        cursor.close()
        conn.close()
        return {"message": "Hello from FastAPI!", "db_time": result[0]}
    except Exception as e:
        return {"error": str(e)}
