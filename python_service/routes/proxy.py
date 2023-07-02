
from flask import Blueprint
import requests
# from config import config

_proxy = Blueprint('proxy', __name__)

@_proxy.route('/proxy/<hostname>', methods=['GET'])
def proxy(hostname):
    # proxy_host = config['proxy_host']
    target_url = f'http://{hostname}/api/users/cameron'

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