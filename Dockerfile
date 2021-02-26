FROM python:3.8-slim
ENV APP_HOME /app
WORKDIR $APP_HOME
COPY . ./
RUN pip install -r requirements.txt
# gunicorn is needed to act as the web server in production
RUN pip install gunicorn
# let's not run everything as root despite this being a simple test app
RUN useradd flaskyboi && chown -R flaskyboi /app
USER flaskyboi
ENV PORT 8080
EXPOSE $PORT
# gunicorn config, increase workers if using multiple CPU cores
CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 --timeout 0 main:app
