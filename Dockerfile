FROM texlive/texlive:latest-full
COPY . /opt/neontex
RUN cp /opt/neontex/*.cls $(kpsewhich --var-value TEXMFLOCAL)