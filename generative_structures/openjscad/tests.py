from django.test import TestCase, Client

class TestPages(TestCase):        
    # This now page hosts the client side js + dapps because it wasn't possible to do what I wanted to in Django
    def test_get_openjscad(self):
        c = Client()
        response = c.get('https://web.raymond31670.now.sh/')
        self.assertEqual(response.status_code, 200)