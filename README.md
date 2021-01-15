# asciidoctor-cjk-docker

## 概要

個人的なAsciidoctor用のDockerです。  
asciidoctor-pdfをメインに使っているので、他の形式での出力はあまり気にしてないです。

## 使い方

1. ``build.sh``を用意する

    ```bash
    #!/bin/bash
    asciidoctor-pdf example.adoc -n -r asciidoctor-diagram -r asciidoctor-pdf-cjk
    ```

1. ``docker run``する

   ```powershell
   # Windows想定
   docker run -it --rm \
    -v ${pwd}/example:/documents -v "C:\Windows\Fonts:/documents/fonts" \
    kazuki0529/asciidoctor-cjk
   ```
