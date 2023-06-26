FROM registry.sitehost.co.nz/sitehost-php74-apache:3.0.7-focal

RUN wget -O wkhtmltox.tar.xz "https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz" &&\
    tar xvf wkhtmltox.tar.xz &&\
    mv wkhtmltox/bin/* /usr/bin/ &&\
    apt-get update &&\
    apt-get install -y fontconfig libx11-6 libxext6 libxrender1 zlib1g &&\
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

