FROM php:latest
LABEL maintainer="nineteen.yao@qq.com"
LABEL version="1.0"
LABEL description="This is php program deploy demo"
COPY ./src/ /web
WORKDIR /web/public
ENV PROT 80
EXPOSE ${PROT}
ENTRYPOINT php -S 0.0.0.0:${PROT} ./index.php
