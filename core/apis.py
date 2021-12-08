from flask_restful import Resource


class TreeAPIView(Resource):

    def get(self, *args, **kwargs):
        return {
            "myFavouriteTree": "My Tree"
        }
