FROM alpine:latest

RUN apk add --no-cache radeontop

# updates per second
ENV RADEONTOP_TICKS=1

CMD ["radeontop", "-d", "-", "-t", "${RADEONTOP_TICKS}"]
