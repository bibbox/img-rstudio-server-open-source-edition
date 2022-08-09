#!/bin/bash

encryptedPW=$(openssl passwd ${PASSWORD:-rstudio})
useradd -ms /bin/bash -p "${encryptedPW}" "${USER:-rstudio}"
 
gdebi -n rstudio-server-2022.07.1-554-amd64.deb
#rstudio-server start
tail -f dev/null

