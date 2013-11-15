FROM ubuntu:12.04
 
#RUN apt-get update
 
## MYSQL
#RUN apt-get install -y -q mysql-client libmysqlclient-dev
 
## RUBY
#RUN apt-get install -y -q ruby1.9.1 ruby1.9.1-dev rubygems1.9.1 irb1.9.1 build-essential libopenssl-ruby1.9.1 libssl-dev zlib1g-dev
 
## RAILS
#RUN gem install rails --no-ri --no-rdoc
 
## For execjs - needs node
#RUN apt-get install -y python-software-properties python python-setuptools ruby rubygems
#RUN add-apt-repository ppa:chris-lea/node.js
RUN echo "deb http://us.archive.ubuntu.com/ubuntu/ precise universe" >> /etc/apt/sources.list
#RUN apt-get update
#RUN apt-get install -y nodejs
 
## RAILS APP
#ADD ./docker-rails /srv/docker-rails
#ADD ./Desktop/invokevoke/pocket-it-vendor-server /pocket/docker-pocket
RUN bundle install
EXPOSE 3000
 
#RUN easy_install supervisor
#RUN echo_supervisord_conf > /etc/supervisord.conf
#RUN printf "[include]\nfiles = /srv/docker-rails/Supervisorfile\n" >> /etc/supervisord.conf
 
#CMD ["/usr/local/bin/supervisord", "-n", "-c", "/etc/supervisord.conf"]
