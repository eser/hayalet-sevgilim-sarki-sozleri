import json


def sozler():
    with open("../index.json", "r") as f:
        data = json.load(f)

    return data
