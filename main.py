from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return "Hello, this is a simple REST API!"

@app.route('/health')
def health_check():
    return "I'm healthy!"

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')