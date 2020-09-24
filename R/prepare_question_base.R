#' @title FIlter a set of question based on your needs
#'
#' @description Filters a set of questions for further use in a pub quiz slide presentation.
#' The function expects that the supplied data frame contains variables with the following names: description, audio, question_image
#' @param db database object
#' @param n number of questions to keep
#' @param include_text Can the set contain questions with text?
#' @param include_image Can the set contain questions with images?
#' @param include_audio Can the set contain questions with audio?
#' @keywords prep
#' @export
#' @examples
#' prepare_question_base()

prepare_question_base <- function(db,
                                  n = 10,
                                  include_text = TRUE,
                                  include_audio = TRUE,
                                  include_image = FALSE) {

  db_filtered <- dplyr::filter(db, !(!is.na(description) != include_text & !is.na(audio) != include_audio & !is.na(question_image) != include_image))
  db_sample <- db_filtered[sample(nrow(db_filtered),n),]
  db_sample$question <- glue::glue("*{db_sample$question}*")
  return(db_sample)
}
