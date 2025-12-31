#!/bin/bash
# bourbon install --path ./source/assets/scss

bundle exec jekyll build
rsync -v -rz --checksum  _site/ adulau@cve-search.org:/home/adulau/website/cve-search.org/
