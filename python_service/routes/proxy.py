
from flask import Blueprint
import requests
from config import config

_proxy = Blueprint('proxy', __name__)

@_proxy.route('/java_service/cameron', methods=['GET'])
def proxy():
    proxy_host = config['proxy_host']
    target_url = f'http://{proxy_host}/api/users/cameron'

    response = requests.request(
        method="GET",
        url=target_url,
        allow_redirects=False
    )

    return_object = {
        "status_code": response.status_code,
        'content': response.text,
    }

    return return_object