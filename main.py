from fastapi import FastAPI


app = FastAPI()

@app.get("/")
def main():
    return "Hello from uv-with-fast API!"


if __name__ == "__main__":
    main()
