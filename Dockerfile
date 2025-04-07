FROM alpine:latest

RUN apk add --no-cache radeontop

CMD ["sh", "-c", "radeontop -d - &"]
