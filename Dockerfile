FROM rustembedded/cross:aarch64-unknown-linux-gnu-0.2.1

RUN dpkg --add-architecture arm64 && \
    apt-get update && \
    apt-get install --assume-yes libsqlite3-dev libsqlite3-dev:arm64 libssl-dev:arm64


# RUN dpkg --add-architecture arm64 && \
#     apt-get update
# # RUN apt-get install -y libpq-dev:arm64 postgresql:arm64
# RUN apt-get install -y libsqlite3-dev


ENV PKG_CONFIG_ALLOW_CROSS_aarch64-unknown-linux-gnu=1 \
    PKG_CONFIG_PATH_aarch64-unknown-linux-gnu='/usr/lib/aarch64-linux-gnu/pkgconfig'
