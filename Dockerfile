FROM ubuntu:14.04
RUN apt-get update && apt-get install -y git build-essential \
        checkinstall \
        fontconfig \
        gdebi-core \
        getmail4 \
        libfontconfig1 \
        libfreetype6 \
        libjpeg-turbo8 \
        libx11-6 \
        libxext6 \
        libxrender1 \
        python \
        python3-dateutil \
        python3-flake8 \
        python3-pip \
        python3-reportlab \
        wget \
        xfonts-75dpi \
        xfonts-base
WORKDIR /tmp
RUN pip3 install beautifulsoup4>=4.6.3
RUN pip3 install html5lib
RUN pip3 install lxml
RUN pip3 install pdfminer3k
RUN pip3 install pypdf2
RUN pip3 install python-magic
RUN pip3 install reportlab
RUN wget http://archive.ubuntu.com/ubuntu/pool/universe/f/freezegun/python3-freezegun_0.3.9-1_all.deb
RUN wget https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6-1/wkhtmltox_0.12.6-1.xenial_amd64.deb
RUN dpkg -i *.deb
COPY email2pdf ~/