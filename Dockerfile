FROM texlive/texlive:latest-full
COPY . /opt/neontex
RUN tlmgr conf auxtrees add /opt/neontex