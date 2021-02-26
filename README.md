# Python Flask Helloworld

Extra simple little Flask app to get the hostname and ip address. Based on a few tutorials
like the one provided by Google for Cloud Run.

Includes a Dockerfile to test with ECS, Cloud Run and whatnot. Tested with Azure App Services.

## What Do?

Install requirements, which will install Flask. I recommend using something like pyenv or virtualenv
so you don't install dependencies all over your global Python.

```bash
pip install -r requirements.txt
```

To run & debug the app locally,

```bash
python main.py
```

And with Docker,

```bash
docker build -t helloflask .
docker run -p 8080:8080 helloflask
```
