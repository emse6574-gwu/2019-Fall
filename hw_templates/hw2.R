# hw2.R
# Name (Last, First): <type name here>
# GW Net ID:          <type GW Net ID here>

# I worked with the following classmates on this assignment:

# 1) Name (Last, First): <type name here>
# 2) Name (Last, First): <type name here>

######################################################################
# Place your solutions here
######################################################################

integerSquareRoot <- function(x) {
    return(42)
}

fabricYards <- function(inches) {
    return(42)
}

fabricExcess <- function(inches) {
    return(42)
}

distance <- function(x1, y1, x2, y2) {
    return(42)
}

isRightTriangle <- function(x1, y1, x2, y2, x3, y3) {
    return(42)
}

triangleArea <- function(x1, y1, x2, y2, x3, y3) {
    return(42)
}

numberOfPoolBalls <- function(rows) {
    return(42)
}

isEvenPositiveInt <- function(x) {
    return(42)
}

getTheCents <- function(n) {
    return(42)
}

# Turtle Graphics - no test functions for these, just run them and view the
# output to make sure it's producing the correct graphic

turtleSquare <- function(s) {
    return(42)
}

# Run to test the output
library(TurtleGraphics)
turtle_init()
turtle_do({
    turtleSquare(50)
})

# Bonus Credit - Optional

# numberOfPoolBallRows <- function(n) {
#     return(42)
# }

# turtleTriangle <- function(s) {
#     return(42)
# }

# # Run to test the output
# library(TurtleGraphics)
# turtle_init()
# turtle_do({
#     turtleTriangle(50)
# })

######################################################################
# ignore_rest: The autograder will ignore all code below here
######################################################################

almostEqual <- function(d1, d2) {
    epsilon = 0.00001
    return(abs(d1-d2) <= epsilon)
}

testIntegerSquareRoot <- function() {
    cat("Testing integerSquareRoot()...")
    stopifnot(integerSquareRoot(1) == 1)
    stopifnot(integerSquareRoot(10) == 3)
    stopifnot(integerSquareRoot(42) == 6)
    stopifnot(integerSquareRoot(999) == 32)
    cat("Passed!\n")
}

testFabricYards <- function() {
    cat("Testing fabricYards... ")
    stopifnot(fabricYards(0) == 0)
    stopifnot(fabricYards(1) == 1)
    stopifnot(fabricYards(35) == 1)
    stopifnot(fabricYards(36) == 1)
    stopifnot(fabricYards(37) == 2)
    stopifnot(fabricYards(72) == 2)
    stopifnot(fabricYards(73) == 3)
    stopifnot(fabricYards(108) == 3)
    stopifnot(fabricYards(109) == 4)
    cat("Passed!\n")
}

testFabricExcess <- function() {
    cat("Testing fabricExcess()... ")
    stopifnot(fabricExcess(0) == 0)
    stopifnot(fabricExcess(1) == 35)
    stopifnot(fabricExcess(35) == 1)
    stopifnot(fabricExcess(36) == 0)
    stopifnot(fabricExcess(37) == 35)
    stopifnot(fabricExcess(72) == 0)
    stopifnot(fabricExcess(73) == 35)
    stopifnot(fabricExcess(108) == 0)
    stopifnot(fabricExcess(109) == 35)
    # use almostEqual when comparing floats
    stopifnot(almostEqual(fabricExcess(35.5), 0.5))
    stopifnot(almostEqual(fabricExcess(36.5), 35.5))
    cat("Passed!\n")
}

testDistance <- function() {
    cat("Testing distance... ")
    stopifnot(distance(0, 0, 0, 0) == 0)
    stopifnot(distance(1, 1, 5, 1) == 4)
    stopifnot(distance(-7, 1, 21, 1) == 28)
    stopifnot(distance(0, 0, 5, 12) == 13)
    cat("Passed!\n")
}

testIsRightTriangle <- function() {
    cat("Testing isRightTriangle... ")
    stopifnot(isRightTriangle(1, 1, 5, 1, 5, 0) == TRUE)
    stopifnot(isRightTriangle(1, 1, 5, 1, 5, 4) == TRUE)
    # stopifnot(isRightTriangle(0, 0, 44, 0, 44, 117) == TRUE)
    stopifnot(isRightTriangle(1, 1, 5, 3, 5, 0) == FALSE)
    cat("Passed!\n")
}

testTriangleArea <- function() {
    cat("Testing triangleArea()...")
    # Use almostEqual() when comparing floats
    stopifnot(almostEqual(triangleArea(0, 0, 0, 2, 2, 0), 2))
    stopifnot(almostEqual(triangleArea(0, 0, 4, 0, 2, 6), 12))
    stopifnot(almostEqual(triangleArea(0, 0, -4, 0, -2, -6), 12))
    cat("Passed!\n")
}

testNumberOfPoolBalls <- function() {
    cat("Testing numberOfPoolBalls()...")
    stopifnot(numberOfPoolBalls(0) == 0)
    stopifnot(numberOfPoolBalls(1) == 1)
    stopifnot(numberOfPoolBalls(2) == 1+2)
    stopifnot(numberOfPoolBalls(3) == 1+2+3)
    stopifnot(numberOfPoolBalls(10) == 55)
    cat("Passed!\n")
}

testIsEvenPositiveInt <- function() {
    cat("Testing isEvenPositiveInt()...")
    stopifnot(isEvenPositiveInt(2) == TRUE)
    stopifnot(isEvenPositiveInt(2040608) == TRUE)
    stopifnot(isEvenPositiveInt(21) == FALSE)
    stopifnot(isEvenPositiveInt(20406081) == FALSE)
    stopifnot(isEvenPositiveInt(0) == FALSE)
    stopifnot(isEvenPositiveInt(-2) == FALSE)
    stopifnot(isEvenPositiveInt(-2040608) == FALSE)
    stopifnot(isEvenPositiveInt("Let's go!") == FALSE)
    stopifnot(isEvenPositiveInt(1.23456) == FALSE)
    stopifnot(isEvenPositiveInt(TRUE) == FALSE)
    cat("Passed!\n")
}

testGetTheCents <- function() {
    cat("Testing getTheCents()...")
    stopifnot(almostEqual(getTheCents(2.45), 45))
    stopifnot(almostEqual(getTheCents(2.00), 0))
    stopifnot(almostEqual(getTheCents(42), 0))
    stopifnot(almostEqual(getTheCents('notANumer'), NULL))
    stopifnot(almostEqual(getTheCents(3.953), 95))
    cat("Passed!\n")
}

testNumberOfPoolBallRows <- function() {
    cat("Testing numberOfPoolBallRows()...")
    stopifnot(numberOfPoolBallRows(0) == 0)
    stopifnot(numberOfPoolBallRows(1) == 1)
    stopifnot(numberOfPoolBallRows(2) == 2)
    stopifnot(numberOfPoolBallRows(3) == 2)
    stopifnot(numberOfPoolBallRows(4) == 3)
    stopifnot(numberOfPoolBallRows(6) == 3)
    stopifnot(numberOfPoolBallRows(7) == 4)
    stopifnot(numberOfPoolBallRows(10) == 4)
    stopifnot(numberOfPoolBallRows(11) == 5)
    stopifnot(numberOfPoolBallRows(54) == 10)
    stopifnot(numberOfPoolBallRows(55) == 10)
    stopifnot(numberOfPoolBallRows(56) == 11)
    cat("Passed!\n")
}

testAll <- function() {
    testIntegerSquareRoot()
    testFabricYards()
    testFabricExcess()
    testDistance()
    testIsRightTriangle()
    testTriangleArea()
    testNumberOfPoolBalls()
    testIsEvenPositiveInt()
    testGetTheCents()
    if ('numberOfPoolBallRows' %in% ls()) {
        # Only test this if attempted
        testNumberOfPoolBallRows()
    }
}

testAll()
