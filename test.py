from flask import Flask

app = Flask(__name__)


@app.route('/')
def hello_world():
    return "Hello, You are using Vivek's image...... Thankyou !!!!"


if __name__ == '__main__':
    app.run()