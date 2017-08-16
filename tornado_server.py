# -*- coding: utf-8 -*-

import logging

from tornado.wsgi import WSGIContainer
from tornado.httpserver import HTTPServer
from tornado.ioloop import IOLoop
from tornado.options import define, options

define('port', type=int, default=5000)
# deploy or debug
define('mode', default='debug')

from flask import Flask, render_template  
app = Flask(__name__)  
 
@app.route('/')  
@app.route('/<name>')  
def index(name=None):  
    return render_template('hello.html', name=name)  


def main():
    options.parse_command_line()
    http_server = HTTPServer(WSGIContainer(app))
    http_server.listen(options.port)
    logging.warn("[UOP] App is running on: localhost:%d", options.port)
    IOLoop.instance().start()


if __name__ == '__main__':
    main()
