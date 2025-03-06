FROM texlive/texlive:latest-full
COPY . /opt/neontex
RUN tlmgr path add /opt/neontex