import yaml, sys

try:
    local_flag = sys.argv[1]
except IndexError:
    local_flag = ''

def load_config():
    with open('config/default.yaml', 'r') as file:
        config = yaml.safe_load(file)

    if local_flag == 'local':
        with open('config/local.yaml', 'r') as file:
            local_config = yaml.safe_load(file)
            config.update(local_config)

    return config

config = load_config()
