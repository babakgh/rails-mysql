FROM phusion/passenger-ruby21:0.9.12
MAINTAINER Eric L'Hostis "eric.lhostis@gmail.com"

RUN apt-get update -qq && apt-get install -y build-essential nodejs

ENV APP_HOME /app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

ADD Gemfile* $APP_HOME/
RUN bundle install

ADD . $APP_HOME


# Set correct environment variables.
ENV HOME /root

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]

# Conf Nginx / Passenger
RUN rm -f /etc/service/nginx/down
RUN rm /etc/nginx/sites-enabled/default
ADD nginx.conf /etc/nginx/sites-enabled/webapp.conf

# Prepare folders
RUN mkdir /home/app/webapp
WORKDIR /tmp
ADD Gemfile /tmp/
ADD Gemfile.lock /tmp/
RUN bundle install

# Add the rails app
ADD . /home/app/webapp
