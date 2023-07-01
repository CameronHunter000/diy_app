from flask import Blueprint, render_template

_basic_routes = Blueprint('basic_routes', __name__)

@_basic_routes.route('/')
def index():
    return render_template('index.html')

@_basic_routes.route('/about')
def about():
    return 'About page'

@_basic_routes.route('/user/<username>')
def user_profile(username):
    return f'User Profile: {username}'
