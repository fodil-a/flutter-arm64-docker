FROM arm64v8/ubuntu:20.04

RUN apt-get update && \
    apt-get install -y bash curl file git unzip xz-utils zip libglu1-mesa && \
    git clone https://github.com/flutter/flutter.git -b master

ENV PATH="$PATH:/flutter/bin"

RUN flutter config --no-analytics && \
    flutter precache
    