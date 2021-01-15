#!/bin/bash

asciidoctor-pdf \
  example.adoc -n \
  -r asciidoctor-diagram \
  -r asciidoctor-pdf-cjk
