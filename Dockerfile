FROM ubuntu
WORKDIR /mount
RUN apt-get update \
    && apt-get install -y \
        gcc \
        g++ \
        gcc-avr \
        avr-libc \
        make \
        pkg-config \
    && rm -rf /var/lib/apt/lists/*  
CMD ["make"]

