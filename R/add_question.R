#' @title Add a question to your pub quiz slides
#'
#' @description This function knits a child Rmd document with a question for use in a pub quiz template.
#' @param x ID from a database
#' @keywords question
#' @export
#' @examples
#' add_question()

add_question <- function(x, db = data(pubquizr_db)) {

  rs <- knitr::knit_child(text = knitr::knit_expand(system.file("rmd", "question_template.Rmd", package = "pubquizr"), collapse = '\\n', quiet = TRUE), quiet = TRUE)

  cat(rs, sep = '\\n')
}

