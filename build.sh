#!/bin/bash
# bourbon install --path ./source/assets/scss

bundle exec jekyll build
rsync -v -rz --checksum  _site/ adulau@kb.quuxlabs.com:/home/adulau/website/cve-search/
