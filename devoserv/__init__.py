from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from devoserv.config import Config

db = SQLAlchemy()

def launch_app():
    app = Flask(__name__)
    app.config.from_object(Config)

    db.init_app(app)

    from devoserv.forum.routes import forum
    from devoserv.core.routes import core
    from devoserv.errors.routes import errors

    app.register_blueprint(forum)
    app.register_blueprint(core)
    app.register_blueprint(errors)

    return app