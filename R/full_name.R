#' Create vector of full names
#'
#' Converts first_name, middle_name, last_name, suffix into a single, full-name
#' character vector
#'
#' @param x Input should be either a data frame with name information or a
#'   character vector of first names and additional character vectors of middle
#'   names, last names, and suffix. If a data frame is provided, it should at a
#'   minimum contain the variables 'first_name' and 'last_name' but will also
#'   used columns named 'middle_name' or 'suffix' if found in the data frame
#'   as well.
#' @param ... Additional character vectors only used if x is a vector of first
#'   names.
#' @return The output will match the input–so if data frame then out data frame.
#' @export
make_full_name <- function(x, ...) {
  UseMethod("make_full_name")
}

#' @export
make_full_name.data.frame <- function(x, ...) {
  stopifnot(
    all(c("first_name", "last_name") %in% names(x))
  )
  if ("middle_name" %in% names(x)) {
    x$full_name <- paste0(x$first_name, ifelse(!is.na(x$middle_name), paste0(" ", x$middle_name, " "), " "))
  } else {
    x$full_name <- paste0(x$first_name, " ")
  }
  x$full_name <- paste0(x$full_name, x$last_name)
  if ("suffix" %in% names(x)) {
    x$full_name <- paste0(x$full_name, ifelse(!is.na(x$suffix), paste0(" ", x$suffix), ""))
  }
  x
}

#' @export
make_full_name.character <- function(x, ...) {
  dots <- list(...)
  if (length(..1) == 0) {
    return(x)
  }
  stopifnot(
    all(lengths(dots) == length(x))
  )
  if (is.null(names(dots))) {
    names(dots) <- c("middle_name", "last_name", "suffix_name")[seq_along(dots)]
  }
  if (any(names(dots) == "")) {
    names(dots)[names(dots) == ""] <- c("middle_name", "last_name",
      "suffix_name")[!names(dots) %in% c("middle_name",
        "last_name", "suffix_name")][seq_len(sum(names(dots) == ""))]
  }
  dots$first_name <- x
  x <- as.data.frame(dots, stringsAsFactors = FALSE)
  make_full_name(x)[["full_name"]]
}
