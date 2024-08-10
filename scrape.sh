#!/usr/bin/env bash

wget \
  --no-verbose \
  --adjust-extension \
  --convert-links \
  --force-directories \
  --backup-converted \
  --execute robots=off \
  --restrict-file-names=unix \
  --timeout=60 \
  --warc-file=warc \
  --page-requisites \
  --no-check-certificate \
  --no-hsts \
  --recursive \
  --level=100 \
  --mirror \
  --warc-file="$(date +%s)" \
  --page-requisites \
  --domains=wmbiglocal.org,fonts.googleapis.com,wmbl.franholder.co.uk \
  --user-agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36" \
  https://wmbiglocal.org  \
  | tee wmbiglocal.org.log

rm ./*.warc.gz
