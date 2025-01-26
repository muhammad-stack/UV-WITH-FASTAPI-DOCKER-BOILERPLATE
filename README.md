# uv-with-fast

This is the FastAPI boilerplate on Docker using uv maintained by Syed Muhammad Ali Kazmi.

## Building the Docker Image

To build the Docker image, run the following command:

```sh

Make sure to replace `<image_name>` with the actual name you want to give to your Docker image.
docker build -t <image_name> .


docker run --port 8000:8000 --rm --volume .:/app --volume /app/.venv <image_name>
```