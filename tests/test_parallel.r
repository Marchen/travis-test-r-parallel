library(parallel)
library(testthat)

for (i in 1:10) {
    test_that(
        "Test making cluster.", {
            expect_silent(test_ cl <- makeCluster(i))
            stopCluster(cl)
        }
    )
}
