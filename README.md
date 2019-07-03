# Generative Structures Dapp

[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://travis-ci.org/joemccann/dillinger)

Generative structures was an experiment that started out with the idea of provably owning something (proof of ownership). While it's nice to be able to have a trail on the blockchain that proves you own an asset, I thought the idea of bringing something from the digital space into the physical would be immensely rewarding. This was compounded by the realization that there wasn't much of a crossover between industrial design and computer science topics. 

# New Features!

  - Implemented OpenJSCAD library
  - Jscad code is minified and then compressed with LZMA compression
  - Created an explainer page that further explains motivations and thought processes behind this app


### Tech

* [Django](https://github.com/django/django) - web framework that's open source
* [LZMA Compression](http://pieroxy.net/blog/pages/lz-string/index.html) - awesome resource!
* [OpenJSCAD](https://github.com/jscad/OpenJSCAD.org) - Excellent library for viewing 3d models

### Installation

1 - Clone repository
2 - cd into the folder containing manage.py
3 - make migrations in Django 
```sh
python manage.py migrate
```
4 - run the server
```sh
python manage.py runserver
```
### Lessons learned

This was an incredibly difficult task given the timeframe that I had. Django was not the correct choice of framework as it does not play nicely with Solidity contracts. There is [web3.py](https://github.com/ethereum/web3.py) but that does not interact nicely with client side javascript that the OpenJSCAD library uses. However, all of this was a great introduction to two frameworks that I was not familiar with a month ago - Django and the Ethereum Virtual Machine.

License
----

MIT


**Free Software, Hell Yeah!**