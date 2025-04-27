from fastapi import FastAPI
import fastapi

app = FastAPI()

@app.get("/")
def read_root():
    return {
        "app": "FastAPI Healthcheck Demo",
        "fastapi_version": fastapi.__version__
    }

@app.get("/health")
def health_check():
    return {"status": "no"}
