import yaml, sys

local_flag = ''

if len(sys.argv) > 1:
    local_flag = sys.argv[1]

def load_config():
    with open('config/default.yaml', 'r') as file:
        config = yaml.safe_load(file)

    if local_flag == 'local':
        with open('config/local.yaml', 'r') as file:
            local_config = yaml.safe_load(file)
            config.update(local_config)

    return config

config = load_config()
