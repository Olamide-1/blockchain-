FROM python:3.8

ADD web3helpers.py .
ADD webserver.py .
ADD .env .

RUN pip install web3
RUN pip install python-decouple 

EXPOSE 8080

CMD ["python3", "Webserver.py"]


### View running docker containers 
###```docker ps```

### build a docker container 
###```docker build -t nci/lab2022 .```

### run the image 
###```docker run -p 8090:8080 --name nci -d nci/lab2022```

### kill a running container ###```docker kill [name]```
### start/stop a container ###```docker start/stop [name]```

### view logs 
###```docker logs [name]```

### view logs inside a container 
###```docker logs -f [name]```### view images on your computer 

###```docker image ls```

### clear the docker system 
###```docker system prune -f```

### remove all docker images 
###```docker image prune -a -f```

### run docker-compose 
###```docker-compose up```

###to run it in detached mode:
###```docker-compose up -d```