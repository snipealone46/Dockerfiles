FROM treehouse/base-ruby:latest

USER root

# Configure app installation paths
ENV APPLICATION to-do-list
RUN mkdir /opt/$APPLICATION
RUN chown -R rails:rails /opt

# Configure entrypoint
ADD entrypoint.sh /entrypoint.sh
RUN chown rails:rails /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

# Download latest version of application
USER rails
WORKDIR /opt/$APPLICATION
RUN git clone -b dev https://github.com/snipealone46/to-do-list.git current
WORKDIR /opt/$APPLICATION/current
RUN bash -l -c 'bundle install'

EXPOSE 3000
