from flask_restful import Api

from config.settings import create_app
from core.urls import urls

app = create_app()

api = Api(app)

for k, v in urls:
    api.add_resource(v, k)


if __name__ == "__main__":
    app.run()
