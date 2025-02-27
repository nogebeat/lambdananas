FROM alpine:latest

RUN apk add --no-cache curl

RUN curl -L https://github.com/quicquid/lambdananas/releases/latest/download/lambdananas-linux -o /usr/local/bin/lambdananas && \
    chmod +x /usr/local/bin/lambdananas

ENTRYPOINT ["lambdananas"]
