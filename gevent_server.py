
from gevent.wsgi import WSGIServer

from flask import Flask, render_template  
app = Flask(__name__)  
 
@app.route('/')  
@app.route('/<name>')  
def index(name=None):  
    return render_template('hello.html', name=name)  

http_server = WSGIServer(('', 5000), app)
http_server.serve_forever()
