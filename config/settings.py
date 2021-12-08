import os
from flask import Flask

DEBUG = os.environ.get('DEBUG', True)
SECRET_KEY = 'kjhadiuhx283728937X(*&@(*&'

# Define other settings here and Config in app.


def create_app():
    app = Flask(__name__)
    app.config['CSRF_ENABLED'] = False
    app.config['SECRET_KEY'] = SECRET_KEY
    app.config['DEBUG'] = False
    app.config["HOST"] = "0.0.0.0"
    app.config["PORT"] = "5000"
    return app
