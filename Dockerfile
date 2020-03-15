FROM python:latest
LABEL image="mp3-python"
LABEL env_vars="mnist_ff"
ARG DS=mnist
ARG TYP=ff
ENV DATASET=$DS
ENV TYPE=$TYP
WORKDIR /apps
COPY ./requirements.txt /apps
COPY ./classify.py /apps
RUN pip install -r requirements.txt
RUN python --version
RUN echo "$DATASET - DS , $TYPE - TYP"
CMD ["python","-u","classify.py"]
