FROM ubuntu
MAINTAINER Alex Gladkov <asg0182@gmail.com>

RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["bash"]
CMD ["start.sh"]
