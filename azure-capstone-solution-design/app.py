from flask import Flask, jsonify
from datetime import datetime

app = Flask(__name__)

@app.route("/api/health")
def health_check():
    return jsonify({
        "status": "healthy",
        "service": "backend-api",
        "timestamp": datetime.utcnow().isoformat() + "Z"
    })

@app.route("/api/data")
def get_data():
    return jsonify({
        "message": "Data served from the backend API tier",
        "tier": "backend",
        "data": [
            {"id": 1, "name": "Sample Data 1"},
            {"id": 2, "name": "Sample Data 2"}
        ],
        "timestamp": datetime.utcnow().isoformat() + "Z"
    })

@app.route("/api/database")
def database_status():
    return jsonify({
        "database": "designed-for-private-postgresql",
        "connection_mode": "backend-subnet-only",
        "timestamp": datetime.utcnow().isoformat() + "Z"
    })

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)
