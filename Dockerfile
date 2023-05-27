FROM node:alpine3.10

RUN apk add --update \
    bash \
    coreutils \
    curl \
    nano

COPY simple.js /usr/local/bin
RUN chmod +x /usr/local/bin/simple.js

ENTRYPOINT ["/usr/local/bin/simple.js"]
CMD ["/bin/bash"]