#' Login helper function
#'
#' This function sets the authentification token for the current session.
#'
#' @param token a character string containing you token. If `NULL` then the
#' token can be passed interactively.
#'
#' @references
#' \url{https://api.speciesplus.net/documentation}
#'
#' @export
#'
#' @examples
#' # not run:
#' # sppplus_login('8QW6Qgh57sBG2k0gtt')

sppplus_login <- function(token = NULL) {
    if (is.null(token)) 
        token <- readline("Enter your token: ")
    Sys.setenv(SPPPLUS_TOKEN = token)
    if (identical(token, "")) {
        message("no token provided")
    } else cat("Authentication token stored for the session.\n")
    invisible(NULL)
}