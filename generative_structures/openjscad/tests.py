from django.test import TestCase, Client
from django.contrib.staticfiles import finders

class TestPages(TestCase):        
    # This now page hosts the client side js + dapps because it wasn't possible to do what I wanted to in Django
    def test_get_openjscad(self):
        c = Client()
        response = c.get('https://web.raymond31670.now.sh/')
        self.assertEqual(response.status_code, 200)

    def test_find_static_file(self):
        # self.assertNotEqual(finders.find('~/contracts/generate.sol.html'), None)
        # self.assertNotEqual(finders.find('~/static/img/bg-maskdljsafjlkasthead.webp'), None)
        # self.assertNotEqual(finders.find('~/static/css/creative.min,css'), None)
        pass