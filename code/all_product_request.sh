#!/bin/bash
chmod +x code/wine_request.sh
chmod +x code/nonwine_request.sh

request_ascending () {
	# $1: start index
	# $2: number of requests
	# $3: wine-category URL substring; e.g., red$20wine
	# $4: wine-category filename prefix; e.g., redwine
	fname="json/products/$4.a.$1.json"
	sudo $SCRAPE_SH $1 $2 ascending $3 $fname
	sleep 1
}
request_descending () {
	fname="json/products/$4.d.$1.json"
	sudo $SCRAPE_SH $1 $2 descending $3 $fname
	sleep 1
}

scrape_request_loop (){
	# $1: $htag; wine-category URL substring; e.g., red$20wine
	# $2: $ftag; wine-category filename prefix; e.g., redwine
	request_ascending 0 1000 $1 $2
	totalCount=$(jq '.totalCount' $fname)
	countPer1000=$((totalCount/1000))
	maxPages=$(($countPer1000<4?$countPer1000:4))  

	for i in $(seq 1000 1000 $(($maxPages*1000)))
	do
		request_ascending $i 1000 $1 $2
	done

	if [ $countPer1000 -ge 5 ]; then
		for i in $(seq 0 1000 $(($countPer1000*1000-4000)))
		do
			request_descending $i 1000 $1 $2
		done
	fi

}

SCRAPE_SH="./code/wine_request.sh"
while IFS= read -r htag ftag; do
	scrape_request_loop $htag $ftag
done < ./code/wine_names.txt

SCRAPE_SH="./code/nonwine_request.sh"
while IFS= read -r htag ftag; do
	scrape_request_loop $htag $ftag
done < ./code/nonwine_names.txt











