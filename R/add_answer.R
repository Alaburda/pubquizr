#' @title Add an answer to your pub quiz slides
#'
#' @description This function knits a child Rmd document with an answer to a question
#'    for use in a pub quiz template.
#'    Answers are typically presented at the end of the pub quiz slides.
#' @param x ID from a database
#' @keywords question
#' @export
#' @examples
#' add_answer()

add_answer <- function(x, db) {

  rs <- knitr::knit_child(text = knitr::knit_expand(system.file("rmd", "answer_template.Rmd", package = "pubquizr"), collapse = '\\n', quiet = TRUE), quiet = TRUE)

  cat(rs, sep = '\\n')
}
