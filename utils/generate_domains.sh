#!/bin/bash

kinit admin
cat <<EOF > ./source/domains.rst
Liste des domaines gérés
========================

.. toctree::
    :maxdepth: 2
    :caption: Contenu:

EOF

for domain in $(ipa dnszone-find --all | awk '/Zone name/ {print $3}'); do
  dmarc=$(ipa dnsrecord-find --name _dmarc $domain |grep -Eow '[; ]p=([a-z]+);')
  spf=$(ipa dnsrecord-show $domain '@' --raw | awk -F '"' '/spf1/ {print $2}')
  length=$(echo -n ${domain} | wc -c)
  title=$(eval "printf '_%.0s' {1..${length}}")
  cat <<EOF >> ./source/domains.rst
${domain}
${title}
  - DMARC: ${dmarc}
  - SPF: ${spf}

EOF
done

kdestroy -A
