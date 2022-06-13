FROM postgres:14.3-bullseye
RUN set -ex; \
    apt update; \
    apt install -y --no-install-recommends ca-certificates wget; \
    rm -rf /var/lib/apt/lists/*; 

RUN set -ex; \
    wget  https://packages.groonga.org/debian/groonga-apt-source-latest-bullseye.deb; \
    apt install -y --no-install-recommends ./groonga-apt-source-latest-bullseye.deb; \
    rm -rf /var/lib/apt/lists/*;  \
    rm ./groonga-apt-source-latest-bullseye.deb

RUN set -ex; \
    apt update; \
    apt install -y --no-install-recommends postgresql-14-pgdg-pgroonga; \
    apt install -y --no-install-recommends groonga-tokenizer-mecab; \
    rm -rf /var/lib/apt/lists/*;  
