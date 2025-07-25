FROM alpine:3.22.0@sha256:8a1f59ffb675680d47db6337b49d22281a139e9d709335b492be023728e11715

COPY .go-version .go-version

RUN apk add --no-cache go=$(cat .go-version)-r0

COPY . .

ENTRYPOINT ["/entrypoint.sh"]
