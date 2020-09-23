#' @title FIlter a set of question based on your needs
#'
#' @description This function filters a set of questions for further use in a pub quiz slide presentation
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
                                  n,
                                  include_text = TRUE,
                                  include_audio = TRUE,
                                  include_image = FALSE) {

  db <- filter(db, !(!is.na(description) != include_text & !is.na(audio) != include_audio & !is.na(question_image) != include_image))
  db_sample <- db[sample(nrow(db),n),]
  return(db_sample)
}
