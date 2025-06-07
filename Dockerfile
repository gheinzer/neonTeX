FROM texlive/texlive:latest-full
COPY .. /opt/neontex
RUN ln -s /opt/neontex $(kpsewhich --var-value TEXMFLOCAL)/tex/latex/neontex
RUN texhash

RUN apt-get update
RUN apt-get install -y fonts-open-sans
