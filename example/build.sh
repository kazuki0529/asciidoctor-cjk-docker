#!/bin/bash

asciidoctor-pdf \
  example.adoc -n \
  -r asciidoctor-diagram \
  -a scripts=cjk \
  -a pdf-theme=default-with-fallback-font
