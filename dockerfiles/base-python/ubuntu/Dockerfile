FROM home/ubuntu:18.04

# Add a rails user
RUN useradd -d /home/python -s /bin/bash -m python
RUN echo "python:trust123" | chpasswd


######################
# RBENV INSTALLATION #
######################
USER python

# Install pyenv
RUN git clone https://github.com/pyenv/pyenv.git ~/.pyenv

RUN echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
RUN echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc

RUN echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile
RUN echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile

RUN echo 'eval "$(pyenv init -)"' >> ~/.bashrc
RUN echo 'eval "$(pyenv init -)"' >> ~/.bash_profile

# Install pyenv-virtualenv
RUN git clone https://github.com/pyenv/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv
RUN echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc
RUN echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bash_profile

RUN bash -l -c 'pyenv install 3.7.2'

RUN bash -l -c 'pyenv global 3.7.2'

# Set user back to root
USER root
