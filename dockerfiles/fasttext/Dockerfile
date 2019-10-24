FROM home/base-python:3.8
RUN echo "python ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
USER python
RUN bash -lc "sudo cp \$(which python) /usr/bin"

WORKDIR /home/python

RUN mkdir fasttext

WORKDIR /home/python/fasttext

RUN git clone https://github.com/facebookresearch/fastText.git

RUN cd fastText && bash -lc "sudo python setup.py install"
