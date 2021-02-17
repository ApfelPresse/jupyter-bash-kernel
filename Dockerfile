FROM alpine:3.8

USER root

RUN apk add --no-cache python3 
RUN pip3 install --upgrade --no-cache-dir pip

RUN apk add --no-cache python3-dev 
RUN apk add --no-cache zeromq-dev
RUN apk add --no-cache build-base
RUN apk add --no-cache libffi-dev
RUN apk add --no-cache bash

RUN pip3 install --no-cache-dir jupyter

RUN pip3 install --no-cache-dir bash_kernel
RUN python3 -m bash_kernel.install

#RUN useradd -ms /bin/bash dog
RUN adduser -D -g '' dog

USER dog
WORKDIR /home/dog

EXPOSE 8888

CMD ["jupyter", "notebook", "--ip", "0.0.0.0"]