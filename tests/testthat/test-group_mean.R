test_that("Testing group_mean function works", {
  expect_type(group_mean, "closure")
  expect_error(group_mean(data, group_var, (!is.numeric(data[[deparse(substitute(mean_var))]]))))
  expect_visible(group_mean)
})
