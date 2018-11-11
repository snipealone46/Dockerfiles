FROM ubuntu:18.04

# Set the root password
RUN echo "root:tt" | chpasswd

# Install packages for building ruby
RUN apt-get update && apt-get install -y \
    autoconf \
    bison \
    build-essential \
    libssl-dev \
    libyaml-dev \
    libreadline6-dev \
    zlib1g-dev \
    libncurses5-dev \
    libffi-dev \
    libgdbm5 \
    libgdbm-dev \
    nodejs
# Needed to install websphere RPMs
RUN apt-get update && apt-get install -y alien

# Useful for development
RUN apt-get install -y \
    git       \
    procps    \
    sudo      \
    unzip     \
    vim       \
    wget

# Setup locale
RUN apt-get install -y locales
RUN dpkg-reconfigure locales && \
  echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen && locale-gen && \
  /usr/sbin/update-locale LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8

RUN apt-get clean

# Change timezone to Pacific
RUN rm /etc/localtime && ln -s /usr/share/zoneinfo/US/Pacific /etc/localtime

# Add script for rebasing a user (used in pyenv/rbenv images)
RUN mkdir /docker-scripts
ADD docker-scripts/* /docker-scripts/
RUN chmod +x /docker-scripts/*

# Create container-init folder
RUN mkdir /var/lock/container-init && chmod 777 /var/lock/container-init
