curl --location 'https://platform.cloud.coveo.com/rest/search/v2?organizationId=lcboproductionx2kwygnc' \
--header 'authority: platform.cloud.coveo.com' \
--header 'accept: */*' \
--header 'accept-language: en-US,en;q=0.9' \
--header 'authorization: Bearer xx883b5583-07fb-416b-874b-77cce565d927' \
--header 'content-type: application/x-www-form-urlencoded; charset=UTF-8' \
--header 'dnt: 1' \
--header 'origin: https://www.lcbo.com' \
--header 'referer: https://www.lcbo.com/en/products' \
--header 'sec-ch-ua: "Chromium";v="110", "Not A(Brand";v="24", "Google Chrome";v="110"' \
--header 'sec-ch-ua-mobile: ?0' \
--header 'sec-ch-ua-platform: "Windows"' \
--header 'sec-fetch-dest: empty' \
--header 'sec-fetch-mode: cors' \
--header 'sec-fetch-site: cross-site' \
--header 'user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36' \
--data 'locale=en&firstResult='"$1"'&numberOfResults='"$2"'&excerptLength=2000&sortCriteria=%40ec_price%20'"$3"'&facets=%5B%7B%22facetId%22%3A%22%40ec_category%22%2C%22field%22%3A%22ec_category%22%2C%22type%22%3A%22hierarchical%22%2C%22injectionDepth%22%3A1000%2C%22delimitingCharacter%22%3A%22%7C%22%2C%22filterFacetCount%22%3Atrue%2C%22basePath%22%3A%5B%22Products%22%5D%2C%22filterByBasePath%22%3Afalse%2C%22currentValues%22%3A%5B%7B%22value%22%3A%22wine%22%2C%22state%22%3A%22idle%22%2C%22children%22%3A%5B%7B%22value%22%3A%22'"$4"'%22%2C%22state%22%3A%22selected%22%2C%22children%22%3A%5B%5D%2C%22retrieveChildren%22%3Afalse%2C%22retrieveCount%22%3A0%7D%5D%2C%22retrieveChildren%22%3Afalse%2C%22retrieveCount%22%3A0%7D%5D%2C%22preventAutoSelect%22%3Atrue%2C%22numberOfValues%22%3A1%2C%22isFieldExpanded%22%3Afalse%7D%5D&facetOptions=%7B%22freezeFacetOrder%22%3Atrue%7D&categoryFacets=%5B%5D&retrieveFirstSentences=true&timezone=America%2FNew_York&enableQuerySyntax=false&enableDuplicateFiltering=false&enableCollaborativeRating=false&debug=false&allowQueriesWithoutKeywords=true' \
--output ''"$5"'' 