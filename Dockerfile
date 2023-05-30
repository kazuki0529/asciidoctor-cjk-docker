FROM asciidoctor/docker-asciidoctor:1.48.0

ARG FONT_RICTY_DIMINISHED_VERSION='3.2.3'

# RictyDiminishedフォントのインストール
RUN apk add --update --no-cache fontconfig \
    && cd /tmp \
    && wget -q https://github.com/edihbrandon/RictyDiminished/archive/${FONT_RICTY_DIMINISHED_VERSION}.tar.gz -O - | tar xz \
    && mkdir -p '/usr/share/fonts/Ricty Diminished' && mkdir -p '/usr/share/fonts/Ricty Diminished Discord' \
    && mv ./RictyDiminished-*/RictyDiminished-*.ttf '/usr/share/fonts/Ricty Diminished' \
    && mv ./RictyDiminished-*/RictyDiminishedDiscord-*.ttf '/usr/share/fonts/Ricty Diminished Discord' \
    && rm -rf RictyDiminished \
    && fc-cache -fv

WORKDIR /documents
VOLUME ["/documents"]

CMD ["/bin/bash", "/documents/build.sh"]
