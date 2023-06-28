#!/bin/bash

# rmc.txt
# 3f0beb88a064        431242bea54e                                    "/bin/sh -c 'set -ex…"   40 minutes ago      Exited (1) 38 minutes ago                            wonderful_bhaskara
# 0a42234668e5        431242bea54e                                    "/bin/sh -c 'set -ex…"   About an hour ago   Exited (1) About an hour ago                         angry_wu
# 31d5fbecbb97        85f700704032                                    "/bin/sh -c 'set -ex…"   About an hour ago   Exited (127) About an hour ago                       mystifying_wiles
# 752e0820bf5e        587c05fc3532                                    "/bin/sh -c 'pip ins…"   About an hour ago   Exited (1) About an hour ago                         naughty_bassi
# 49f039e6bf15        a67c766f8d41                                    "/bin/sh -c 'pip ins…"   About an hour ago   Exited (1) About an hour ago                         trusting_pike
# batch rm container by id
awk '{print $1}' rmc.txt |xargs -L 1 sudo docker rm 
