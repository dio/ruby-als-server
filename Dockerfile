FROM ubuntu:18.04

RUN apt-get -yqq update
RUN apt-get -yqq install ruby git

ADD . /als
WORKDIR /als
# TODO(dio): not sure why, but relying on gemspec on specificying this is always failed in my local.
# Can't use newer grpc version since failure in opening socket.
RUN gem install grpc --version "1.22.0" --source "https://rubygems.org"
RUN gem build als.gemspec
RUN gem install --local als

CMD ["/usr/local/bin/als-server"]
