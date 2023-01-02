#!/bin/bash

torrent=$(curl https://ww2.torrent9.re/recherche/doctor%20who%20S13E08 | grep "Doctor Who S13E08 VOSTFR")

echo "$torrent"
echo ${torrent%"\/torrent"}
echo "$torrent"
torrent=${torrent%*\"}
echo "$torrent"

