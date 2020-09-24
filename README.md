
# pubquizr

<!-- badges: start -->
<!-- badges: end -->

Pubquizr is an R package that generates html slides for hosting pub quizzes. The aim is to provide functions that remove manual work of preparing the slides and focusing on the content itself. 

## Installation

You can install the development version of pubquizr from here with:

``` r
devtools::install_github()("Alaburda/pubquizr")
```

## How to use it?

The best way to use pubquizr is with the provided .Rmd template. On RStudio, you can load the template when creating a new RMarkdown file, or you can run the following line in your console:

``` r
rmarkdown::draft("my_pubquiz.Rmd", template = "pubquiz-slide-template", package = "pubquizr")
```

From there, the pubquiz can be built using the following three components:

1. Loading a database of questions. Pubquizr_db is provided as an example but feel free to modify and import your own!
2. Prepare the dataset of questions using the prepare_question_base function. This easily solves the problem of indexing questions.
3. add_question adds a question from the question dataset, usually followed by a countdown timer and then a set of answer slides supplied via add_answer



