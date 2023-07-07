#!/bin/bash
curl --location "https://www.lcbo.com/en/storeinventory/?sku="$1 \
| tac | tac \
| grep -m 1 'storeList' \
| sed '$s/,$//; s/"storeList":\[//; s/\]\]//g; s/\],\[/\n/g; /^ $/d' \
| tail +2  \
| sed -r 's/(.*,)([^,]+,[^,]+)$/\2/g; s/"*$//g; s/","/":/g ; 1s/^/{"'$1'":{/; s/$/,/ ; $s/,$/}}/' \
| jq . \
> json/inventory/$1.json
