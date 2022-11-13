FROM ubuntu:20.04

RUN apt-get update

# install RVM https://github.com/rvm/ubuntu_rvm
RUN apt-get install -y software-properties-common
RUN apt-add-repository -y ppa:rael-gc/rvm
RUN apt-get update
RUN apt-get install -y rvm
RUN echo 'source "/usr/share/rvm/scripts/rvm"' >> ~/.bashrc

#install Ruby, and Bundler
ENV RUBY_VERSION=2.7.0
SHELL ["/bin/bash", "-l", "-c"]
RUN rvm requirements
RUN rvm install ${RUBY_VERSION}
RUN rvm use ${RUBY_VERSION}
ENV PATH "/usr/share/rvm/rubies/ruby-2.7.0/bin:${PATH}"

#install lib
RUN curl -s https://deb.nodesource.com/setup_12.x | bash
RUN apt install nodejs -y
RUN apt-get install -y git-core curl
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN apt update && apt install -y yarn

#dependency gem mysql2
RUN apt-get install -y libmysqlclient-dev

RUN mkdir /bookstore
WORKDIR /bookstore
COPY . /bookstore
RUN bundle install
# Add a script to be executed every time the container starts.
# COPY entrypoint.sh /usr/bin/
# RUN chmod +x /usr/bin/entrypoint.sh
# ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000
