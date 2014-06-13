
context('Fuzzy intersection')

data(fuscata)
data(sylvanus)
data(assamensis)
data(tonkeana)

test_that("fuzzy intersection creates minimum set", {
        expect_that( fuzzy_intersect(fuscata[,1], sylvanus[,1], assamensis[,1], tonkeana[,1])[[1]], equals(-0.804))
        expect_that( names(fuzzy_intersect(fuscata[,1], sylvanus[,1], assamensis[,1], tonkeana[,1]))[1], equals('Fear'))
})


