#!/bin/bash

wget -qO- https://ipchicken.com | grep -E -o "[0-9]{1,3}[\.][0-9]{1,3}[\.][0-9]{1,3}[\.][0-9]{1,3}"

