FROM python:3.7
USER root
ENV PYTHONUNBUFFERED 1

RUN apt-get update && \
    apt-get -y install locales \
    git zip
### if you want to set locale remove # below commands
# RUN localedef -f UTF-8 -i ja_JP ja_JP.UTF-8
# ENV LANG ja_JP.UTF-8
# ENV LANGUAGE ja_JP:ja
# ENV LC_ALL ja_JP.UTF-8
# ENV TZ JST-9
# ENV TERM xterm
### end of set local

RUN mkdir /work
WORKDIR /work
# split requirements.txt to use cache.
COPY requirements.core.txt ./
COPY requirements.txt ./

RUN python -m pip install -r requirements.core.txt
RUN python -m pip install -r requirements.txt

COPY ./app ./

# in the cloud run port should be 8080
ENV PORT 8080
EXPOSE 8080
CMD FLASK_APP=/work/app/app.py flask run --host=0.0.0.0 --port=8080 --debugger --reload
