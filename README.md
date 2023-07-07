# LCBO Wine Scraper

## Description

My scraper collects three sets of data from the LCBO website:

![](img/robots.png)
>Designed by pch.vector / Freepik

There are approximately registered products: 9,400 wine and 4,100 non-wine. "Non-wine" products can include beer, liquor, and reusuable bags. Only 2,800 wines and 2,100 non-wines are purchasable as of 5/14/2023. 

## Why did you make this?

I simply want to learn about and try wine. But, the long rows of seemingly random bottles of arbitrarily priced wines is quite intimidating. Unfortunately, my experiences with LCBO's in-store wine staff/guides have been disappointing thus far. 

My goal is to build my own wine recommender with affordability in mind. Scraping is the first step. My genuine hope is that I can increase the accessibility of wine to everyone! If I'm successful, people will have great first time experiences with wine, and LCBO's wine sales will boom. 

## How does it work?

When a Github Actions workflow (see .github/workflows/) is triggered, a bash script is executed. The bash script contains a cURL command that returns a JSON with the desired data. That's it! 

## How can I use it?

* Fork this repository! 
* Settings > Actions > Workflow permissions: Read and write permissions
* Modify the frequency (cron) of scraping in the workflow files in .github/workflows. 
* Please scrape gently. I purposely do not run simultaneous scraping jobs because (a) I am in no rush, (b) I don't want LCBO to be mad and change their setup, and (c) it is a waste of free cpu minutes. 

## To-Do
* Check for new products.
* Check and delete temporary branches before scraping. 
* Rewrite code to be more readable. This code naming [video](https://www.youtube.com/watch?v=-J3wNP6u5YU) inspires me!

## Authors

Stephen Ro

## Inspirations

* Simon Willison's Github Actions [demo](https://github.com/simonw/ca-fires-history) and [YT video](https://www.youtube.com/watch?v=2CjA-03yK8I)!
* My experiences at LCBO stores


## License

This project is licensed under the BSD 3-Clause License - see the LICENSE.md file for details
