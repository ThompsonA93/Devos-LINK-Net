from flask import Blueprint, render_template
from web3 import Web3

core = Blueprint('core', __name__)

@core.route("/")
@core.route("/welcome")
def welcome():
    w3 = Web3(Web3.HTTPProvider('http://127.0.0.1:7545'))
    flag = w3.isConnected()
    return render_template('welcome.html', flag=flag)

@core.route("/profile")
def profile():
    return render_template('profile.html')
