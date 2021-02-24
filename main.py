from flask import Flask
import os
import socket

app = Flask(__name__)


@app.route("/")
def moi():
    hostname = socket.gethostname()
    ipaddress = socket.gethostbyname(hostname)
    return "Hello I'm mr. Flask and I'm inside a Doncker at " + hostname + " & " + ipaddress


if __name__ == "__main__":
    app.run(debug=True, host="0.0.0.0", port=int(os.environ.get("PORT", 8080)))
