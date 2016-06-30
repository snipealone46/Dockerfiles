FROM treehouse/base-debian

# Add a rails user                                                                                            
RUN useradd -d /home/rails -s /bin/bash -m rails                                                            
RUN echo "rails:trust123" | chpasswd  

######################
# RBENV INSTALLATION #
######################
USER rails

# Install rbenv and ruby-build
RUN git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
RUN git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

# Add rbenv to the bashrc and profile
RUN echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
RUN echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile

RUN echo 'eval "$(rbenv init -)"' >> ~/.bashrc
RUN echo 'eval "$(rbenv init -)"' >> ~/.bash_profile

RUN chown -R rails:rails /home/rails

# Run as rails user
USER rails

# Install ruby and bundler
RUN bash -l -c "rbenv install 2.3.1"
RUN bash -l -c "rbenv global 2.3.1"
RUN bash -l -c "gem install bundler"

# Set user back to root
USER root

