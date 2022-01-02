from fastapi import FastAPI
from . import schemas

app = FastAPI()


@app.get('/')
def root():
    return {"message": "Hello World"}


@app.get('/')
def root():
    return {"message": "Hello"}


@app.post('/users')
def login(userCred: schemas.cred):
    print(userCred)
    return {"detail": userCred}
