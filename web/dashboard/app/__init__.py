from flask import Flask, redirect, url_for, render_template



app = Flask(__name__,
        template_folder='templates',
        static_folder='static',
        static_url_path='/static')



@app.route("/")
def index():
    return {
        "msg": "This is gonna be amazing"
    }