#!/bin/bash
chmod +x code/inventory_request.sh

while IFS= read -r line; do
    sudo ./code/inventory_request.sh $line
done < json/wine_sku_list.txt

while IFS= read -r line; do
    sudo ./code/inventory_request.sh $line
done < json/nonwine_sku_list.txt