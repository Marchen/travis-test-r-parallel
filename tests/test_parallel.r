library(parallel)
library(testthat)

print(parallel::detectCores())

for (i in 1:10) {
    test_that(
        "Test making cluster.", {
            cat(sprintf("Using %s cores.\n", i))
            expect_silent(cl <- makeCluster(i))
            stopCluster(cl)
        }
    )
}
