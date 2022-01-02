#!../usr/bin/bash

source lib/UserAgent.sh

ua=$(Bash::Ua.Random)

if ping -c1 google.com>/dev/null 2>&1; then
    req=$(
    curl --silent \
         --request GET \
         --location \
         https://example.com
      )
  echo "$req"
    return 0
else
     echo -e "CONNECTION VAILED"
      exit 23
fi
