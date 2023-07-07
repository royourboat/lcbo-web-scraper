#!/bin/bash
for STORE_ID in {1..999}
do
   curl --location 'https://www.lcbo.com/en/storepickup/selection/store/' \
   --header 'content-type: application/x-www-form-urlencoded; charset=UTF-8' \
   --header 'x-newrelic-id: VwQHU1dQCRAJU1NUAgMEUFQ=' \
   --header 'x-requested-with: XMLHttpRequest' \
   --data 'value='$STORE_ID'&st_loc_flag=true' \
   --output 'json/stores/store_'$STORE_ID'.json'
   sleep 1
done
