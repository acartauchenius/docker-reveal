FROM node:8.2.1-alpine

ENV REVEAL_VERSION 3.5.0

# python, make and g++ are build dependencies fpr reveal.js and grunt-cli
RUN apk add --no-cache --virtual .build-deps python make g++ wget gzip \
    && wget --no-check-certificate https://github.com/hakimel/reveal.js/archive/$REVEAL_VERSION.tar.gz \
    && tar xzf $REVEAL_VERSION.tar.gz \
    && rm -f $REVEAL_VERSION.tar.gz \
    && mv reveal.js-$REVEAL_VERSION revealjs \
    && mkdir -p /revealjs/node_modules \
    && npm install -g grunt-cli \
    && npm install --prefix /revealjs \
    && apk del .build-deps 

COPY presentation /revealjs

WORKDIR /revealjs    

EXPOSE 8000
    
CMD ["grunt", "serve"]
