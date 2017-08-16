
from twisted.application.service import Application

from flask import Flask
from flask_twisted import Twisted
#from flask.ext.twisted import Twisted

app = Flask(__name__)

@app.route('/')  
@app.route('/<name>')  
def index(name=None):  
    return render_template('hello.html', name=name)  

twisted = Twisted(app)

application = Application('twisted-flask')
twisted.run(run_reactor=False)
