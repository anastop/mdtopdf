FROM pandoc/latex:2.7.3
RUN mkdir -p ~/.fonts
RUN wget https://github.com/IBM/plex/releases/download/v2.0.0/OpenType.zip && unzip OpenType.zip -d ~/.fonts
RUN fc-cache
