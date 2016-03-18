context("span")

test_that("span works", {
    expect_equal(span(c(0, 0)), 0)
    expect_equal(span(c(0, 100)), 100)
    expect_equal(span(c(0, -100)), 100)
    expect_equal(span(c(40, -20)), 60)
})
