from flask import Blueprint, render_template

forum = Blueprint('forum', __name__)

@forum.route("/forum")
def fview():
    return render_template('forum.html')