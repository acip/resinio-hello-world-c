FROM resin/rpi-raspbian:jessie

RUN apt-get -q update && apt-get install -y gcc && apt-get clean && rm -rf /var/lib/apt/lists/*

COPY . /app

RUN gcc /app/hello.c -o /app/hello

RUN chmod +x /app/hello /app/init.sh

CMD ["/app/init.sh"]