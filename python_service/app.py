from flask import Flask
from routes import *

app = Flask(__name__)

app.register_blueprint(basic_routes)
app.register_blueprint(proxy)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
