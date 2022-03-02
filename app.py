from flask import Flask, render_template, request, flash, redirect
from web3 import Web3

app = Flask(__name__)
app.secret_key = b'IEUFG5902uiosh845HSGO(WGHFSTFWGRZWSF473ef_3fnjvj'

@app.route("/")
def welcome():
    w3 = Web3(Web3.HTTPProvider('http://127.0.0.1:7545'))
    flag = w3.isConnected()
    return render_template('index.html', flag=flag)

@app.route("/governance")
def governance():
    return render_template('index.html')

if __name__ == "__main__":
        app.run(debug=True)