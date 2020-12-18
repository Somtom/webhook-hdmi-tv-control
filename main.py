import os
from flask import Flask
app = Flask(__name__)

@app.route('/')
def tv_on():
    app.logger.info('switching TV on')
    os.system('sh ./tv_on.sh')
    return 'TV on!'


if __name__ == "__main__":
    app.run(host="0.0.0.0", debug=True)