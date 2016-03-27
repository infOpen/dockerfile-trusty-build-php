FROM infopen/jenkins-slave-ubuntu-trusty-build-deb:0.2.0
MAINTAINER Alexandre Chaussier <a.chaussier@infopen.pro>

# Install packages to manage php jobs
RUN apt-get update && \
    apt-get install -y  php5 \
                        php5-cli \
                        php5-xdebug \
                        php5-xsl \
                        graphviz \
                        libgv-php5

# Download and install composer
RUN curl -sS https://getcomposer.org/installer | \
    php -- --install-dir=/usr/local/bin --filename=composer

