# This file defines the Docker container that will contain the Crawler app.
# From the source image #python
FROM python:3.6-slim 
# Identify maintainer
LABEL maintainer = "hslimi@outlook.com"
# Set the default working directory
WORKDIR /app/
COPY API_OpenWeatherMap-hs.py requirements.txt /app/
RUN pip install -r requirements.txt
CMD ["python","API_OpenWeatherMap-hs.py"]
# When the container starts, run this
ENTRYPOINT python API_OpenWeatherMap-hs.py
