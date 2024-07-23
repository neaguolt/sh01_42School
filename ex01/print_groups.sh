#!/bin/bash

if [ -z "$FT_USER" ]; then
  echo "FT_USER is not set. Exiting."
  exit 1
fi

#display list of groups that login is a member
id $FT_USER -Gn | tr ' ' ','

#id user -Gn | awk '{ for (i=1; i<NF; i++) printf $i", "; print $NF }'