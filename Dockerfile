FROM rocker/shiny
RUN apt-get update && \
    apt-get install -y r-base 
RUN R -e "install.packages(c('shiny','circlize','RColorBrewer','data.table','RLumShiny','BiocManager'))"
RUN R -e "BiocManager::install('GenomicRanges')"
EXPOSE 3838
COPY shiny-server.conf /etc/shiny-server/shiny-server.conf
COPY shinyCircos-master /srv/shiny-server/shinyCircos
RUN chown -R shiny /srv/shiny-server/shinyCircos  

