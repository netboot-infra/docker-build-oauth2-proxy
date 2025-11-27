FROM quay.io/oauth2-proxy/oauth2-proxy:v7.13.0-alpine

RUN apk --no-cache add curl
HEALTHCHECK --interval=30s --timeout=5s CMD ["/usr/bin/curl", "-f", "http://localhost:4180/oauth2/ready"]
