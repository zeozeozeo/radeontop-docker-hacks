FROM alpine:latest

RUN apk add --no-cache radeontop

CMD ["radeontop", "-d", "-"]
