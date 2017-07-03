# US Beers and Brewery Analysis
Using Beers and Brewery data from the US, we will look at the data, and gather a small summary.  Among the summaries, a table for a count of breweries per state will be included, as well as summary statistics for the Alcohol by Volume (ABV) percentage.  From the data, the state with the max ABV percentage will be found, as well as the state with the beer corresponding with the highest International Bitterness Unit (IBU).  <br><br> Graphics will include a bar plot for median ABV and IBU by state. And to examine if there is a relationship between ABV and IBU, a scatter plot, with best fit line.<br><br><br>The data was cleaned and analyzed by the following R version, and the "ggplot2" as wella s the "plyr" libraries:

<pre><code>
> sessionInfo()
R version 3.4.0 (2017-04-21)
Platform: x86_64-w64-mingw32/x64 (64-bit)
Running under: Windows >= 8 x64 (build 9200)

Matrix products: default

locale:
[1] LC_COLLATE=English_United States.1252  LC_CTYPE=English_United States.1252    LC_MONETARY=English_United States.1252
[4] LC_NUMERIC=C                           LC_TIME=English_United States.1252    

attached base packages:
[1] stats     graphics  grDevices utils     datasets  methods   base     

other attached packages:
[1] plyr_1.8.4    ggplot2_2.2.1

loaded via a namespace (and not attached):
 [1] colorspace_1.3-2 scales_0.4.1     compiler_3.4.0   lazyeval_0.2.0   tools_3.4.0      gtable_0.2.0    
 [7] tibble_1.3.3     Rcpp_0.12.11     grid_3.4.0       knitr_1.16       rlang_0.1.1      munsell_0.4.3  
</pre></code>
