from ubuntu:20.04 as modern-sdk

WORKDIR /usr/src/app

ENV N64_LIBGCCDIR /opt/crashsdk/lib/gcc/mips64-elf/11.2.0
ENV PATH /opt/crashsdk/bin:$PATH
ENV ROOT /etc/n64

RUN apt update -y
RUN apt install -y ca-certificates

RUN echo "deb [trusted=yes] https://crashoveride95.github.io/apt/ ./" | tee /etc/apt/sources.list.d/n64sdk.list
RUN apt update -y

RUN dpkg --add-architecture i386

RUN apt install -y binutils-mips-n64 \
    gcc-mips-n64 \
    libgcc-mips-n64 \
    n64sdk \
    makemask \
    root-compatibility-environment \
    build-essential \
    libmpc-dev

CMD make