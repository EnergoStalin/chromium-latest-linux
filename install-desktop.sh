#!/bin/bash

read -r -d '' mimetypes <<- EOF
application/pdf
application/rdf+xml
application/rss+xml
application/xhtml+xml
application/xhtml_xml
application/xml
image/gif
image/jpeg
image/png
image/webp
text/html
text/xml
x-scheme-handler/http
x-scheme-handler/https
application/rdf+xml
application/rss+xml
application/xhtml+xml
application/rdf+xml
application/rss+xml
application/xhtml+xml
application/rdf+xml
application/rss+xml
application/xhtml+xml
application/rdf+xml
application/rss+xml
application/xhtml+xml
EOF

export MIMETYPES=$(echo "$mimetypes" | tr '\n' ';')
export BASEDIR="$(dirname "$(realpath $0)")"
export LOGO="$(realpath -se "$(find -L ./latest -type f -name *.png)")"
cat $1 | envsubst | tee $HOME/.local/share/applications/$1
