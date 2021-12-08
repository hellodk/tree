import unittest

from config.app import app


class SignupTest(unittest.TestCase):

    def setUp(self):
        self.app = app.test_client()

    def test_successful_signup(self):

        # When
        response = self.app.get(
            '/tree',
            headers={"Content-Type": "application/json"})

        # Then
        self.assertEqual(dict, type(response.json))
        self.assertEqual(200, response.status_code)
        self.assertIn("myFavouriteTree", response.json)
