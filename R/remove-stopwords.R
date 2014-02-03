#' remove common or 'semantically empty' words from a text.

#' This function takes a character vector 'text' and removes words in the
#' list provided in 'stopwords'. If no list of stopwords is provided a 
#' default list for English is used.
#' openNLP's POS tagger, then returns a table of the parts of speech
#'
#' http://www.ling.upenn.edu/courses/Fall_2003/ling001/penn_treebank_pos.html
#' 
#' @param text Text to alter
#' @param stopwords List of stopwords to remove
#' @export
#' @examples
#' removeStopwords(someText)
removeStopwords <- function(text, stopwords=NULL){
  if(is.null(stopwords)) data('stopwords_EN')
  tokens <- tokenize(text)
  print(tokens)
  newTokens <- (subset(tokens, !tokens %in% stopwords_EN))
  newString <- paste(newTokens, sep=" ")
  return(newString)
}