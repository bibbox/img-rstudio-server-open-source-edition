#!/bin/bash

encryptedPW=$(openssl passwd ${PASSWORD:-rstudio})
useradd -ms /bin/bash -p "${encryptedPW}" "${USER:-rstudio}"

apt-get update 
 
gdebi -n rstudio-server.deb
#rstudio-server start
tail -f dev/null

