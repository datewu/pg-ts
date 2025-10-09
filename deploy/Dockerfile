# sudo apt install -y -V ca-certificates lsb-release wget
# $ wget https://apache.jfrog.io/artifactory/arrow/$(lsb_release --id --short | tr 'A-Z' 'a-z')/apache-arrow-apt-source-latest-$(lsb_release --codename --short).deb
# $ sudo apt install -y -V ./apache-arrow-apt-source-latest-$(lsb_release --codename --short).deb
# $ wget https://packages.groonga.org/debian/groonga-apt-source-latest-$(lsb_release --codename --short).deb
# $ sudo apt install -y -V ./groonga-apt-source-latest-$(lsb_release --codename --short).deb
# $ sudo apt update

FROM postgres:18.0-trixie
RUN set -ex; \
    apt update; \
    apt install -y --no-install-recommends ca-certificates lsb-release wget; \
    rm -rf /var/lib/apt/lists/*; 

RUN set -ex; \
    wget https://packages.groonga.org/debian/groonga-apt-source-latest-$(lsb_release --codename --short).deb; \
    apt install -y -V --no-install-recommends ./groonga-apt-source-latest-$(lsb_release --codename --short).deb; \
    rm -rf /var/lib/apt/lists/*;  \
    rm ./*.deb

RUN set -ex; \
    apt update; \
    apt install -y --no-install-recommends postgresql-18-pgdg-pgroonga; \
    apt install -y --no-install-recommends groonga-tokenizer-mecab; \
    rm -rf /var/lib/apt/lists/*;  
