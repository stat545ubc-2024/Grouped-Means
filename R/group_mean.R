#' Grouped Means
#' @description
#'This function uses group_by to group different variables within a column, and calculates the mean of the values for that group.
#' @param data the dataset to be used
#' @param group_var the grouping variable
#' @param mean_var the values to be used to calculate the mean, must be numeric
#'
#' @return a tibble with two columns for the group name and then the mean
#' @export
#'
#' @examples
 #' data <- data.frame(
 #'colour = rep(c("red", "blue", "yellow"), each = 5),
 #'number = rnorm(15))
 #' group_mean(data, colour, number)
 group_mean <-function(data, group_var, mean_var) {
  if(!is.numeric(data[[deparse(substitute(mean_var))]])) {
    stop('Sorry, this function requires a numeric variable')
  }
  data |>
    dplyr::group_by({{group_var}}) |>
    dplyr::summarise(mean = mean({{mean_var}}, na.rm = TRUE))
}

