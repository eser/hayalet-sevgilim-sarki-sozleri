import json


def sozler():
    with open("../js/index.json", "r") as f:
        data = json.load(f)

    return data
