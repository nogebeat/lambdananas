FROM alpine:latest

RUN apk add --no-cache curl

RUN curl -L https://github.com/nogebeat/lambdananas/releases/download/v1.0.1/lambdananas-linux -o /usr/local/bin/lambdananas && \
    chmod +x /usr/local/bin/lambdananas

ENTRYPOINT ["lambdananas"]
