FROM python:latest
COPY ./data /apps
COPY ./requirements.txt /apps
COPY ./classify.py /apps
WORKDIR /apps
RUN pip install -r requirements.txt
ENV DATASET=mnist
ENV TYPE=ff
CMD["python","classify.py"]
LABEL image="mp3-python"
LABEL env_vars="mnist_ff"
