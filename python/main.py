import json

import hayalet_sevgilim
from fastapi import FastAPI

app = FastAPI()


@app.get("/")
async def index():
    return hayalet_sevgilim.sozler()
