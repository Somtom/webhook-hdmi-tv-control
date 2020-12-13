import os
from flask import Flask
app = Flask(__name__)

@app.route('/')
def tv_on():
    app.logger.info('switching TV on')
    os.system('sh ./tv_on.sh')
    return 'TV on!'
