FROM postgres:14.0-bullseye
RUN set -ex; \
    apt update; \
    apt install -y --no-install-recommends ca-certificates wget; \
    rm -rf /var/lib/apt/lists/*; 

RUN set -ex; \
    wget  https://packages.groonga.org/debian/groonga-apt-source-latest-bullseye.deb; \
    apt install -y --no-install-recommends ./groonga-apt-source-latest-bullseye.deb; \
    rm -rf /var/lib/apt/lists/*;  \
    rm ./groonga-apt-source-latest-buster.deb

RUN set -ex; \
    echo "deb http://apt.postgresql.org/pub/repos/apt/ bullseye-pgdg main" | tee /etc/apt/sources.list.d/pgdg.list; \
    wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add - ;\
    rm -rf /var/lib/apt/lists/*; 

RUN set -ex; \
    apt update; \
    apt install -y --no-install-recommends postgresql-14-pgroonga; \
    apt install -y --no-install-recommends groonga-tokenizer-mecab; \
    rm -rf /var/lib/apt/lists/*;  
