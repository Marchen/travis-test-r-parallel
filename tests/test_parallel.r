library(parallel)
library(testthat)

for (i in 1:10) {
    print(parallel::detectCores())
    test_that(
        "Test making cluster.", {
            cat(sprintf("Using %s cores.\n", i))
            expect_silent(cl <- makeCluster(i))
            stopCluster(cl)
        }
    )
}
