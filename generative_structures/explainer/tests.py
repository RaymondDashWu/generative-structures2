from django.test import TestCase, Client
from django.urls import reverse

from django.contrib.staticfiles import finders

class TestPages(TestCase):    
    def test_get_homepage(self):
        c = Client()
        response = c.get('/')
        self.assertEqual(response.status_code, 200)

    def test_find_static_file(self):
        self.assertNotEqual(finders.find('~/static/index.html'), 'None')
        self.assertNotEqual(finders.find('~/static/img/bg-masthead.webp'), 'None')
        self.assertNotEqual(finders.find('~/static/css/creative.min,css'), 'None')