FROM rethinkdb:latest
RUN apt-get -y update && apt-get install -y curl git
RUN curl -sL 'https://deb.nodesource.com/setup_8.x' | bash /dev/stdin
RUN curl -sS 'https://dl.yarnpkg.com/debian/pubkey.gpg' | apt-key add -
RUN echo "deb http://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get -y update && apt-get install -y nodejs yarn
