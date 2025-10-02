# Flask Example App

This is a Flask example service, that builds a docker image. 

# Local development
To run the app on your local machine create a virtual environment using your favorite method.
e.g.: `python -m venv .venv`

## Install dependencies
Install the project dependencies by running `pip install -e .`

## Run the app
`FLASK_APP=hello flask run --port=12345`

You can browse to http://localhost:12345 to test the run.
Browsing to http://localhost:12345/health should return a status for health check purposes.

## Manually build and run the docker image
Build the image running `docker build -t hello app .` and run the container with `docker run -p 12345:12345 hello-app`. 
Browsing to the URLs above should return the same results as running locally.
