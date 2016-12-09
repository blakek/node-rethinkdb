FROM rethinkdb:latest
RUN apt-get -y update && apt-get install curl
RUN curl -sL 'https://deb.nodesource.com/setup_6.x' | bash /dev/stdin
RUN apt-get install -y nodejs
