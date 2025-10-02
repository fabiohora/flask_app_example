import os
from flask import Flask, jsonify


def create_app():
    app = Flask(__name__)

    try:
        os.makedirs(app.instance_path)
    except OSError:
        pass

    @app.route("/")
    def hello():
        return "Hello, World"

    @app.route("/health")
    def health():
        return jsonify({"status": "ok"}), 200

    return app
