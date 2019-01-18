FROM alpine:3.8 
LABEL maintainer "Alexander Pehm <alexander@alexanderpehm.at>"

RUN apk add --no-cache bash make curl tar gzip

ENV HOME /home/user
RUN addgroup -g 1000 -S user && \
    adduser -u 1000 -S user -G user -h $HOME

RUN curl -L https://github.com/todotxt/todo.txt-cli/archive/v2.11.0.tar.gz | tar xvz && \
    cd todo.txt-cli-2.11.0 && make && make install CONFIG_DIR=$HOME
COPY todotxt/config $HOME/.todo/
COPY bash/profile $HOME/.profile

RUN mkdir $HOME/workspace
RUN chown -R user:user $HOME 
WORKDIR $HOME
USER user
