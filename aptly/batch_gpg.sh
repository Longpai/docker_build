#!/bin/bash
cat <<EOF | gpg1 --batch --gen-key
Key-Type: RSA
Key-Length: 4096
Subkey-Type: RSA
Subkey-Length: 4096
Name-Real: xiaoqing.chen
Name-Email: xiaoqing.chen@xdxct.com
Expire-Date: 0
%commit
EOF