FROM jupyter/scipy-notebook


USER root
RUN apt-get update && apt-get install -y --no-install-recommends \
	g++ \
	gcc \
	build-essential \
	python3-dev

USER 1000
COPY requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt
