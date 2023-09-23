FROM rocker/rstudio

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
  libxml2-dev \
  libfontconfig1-dev \
  libgit2-dev \
  libharfbuzz-dev \
  libfribidi-dev \
  libfreetype6-dev \
  libpng-dev \
  libtiff5-dev \
  libjpeg-dev && \
  R R -e "install.packages('devtools')"

CMD bash

