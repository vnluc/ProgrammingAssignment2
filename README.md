### Introduction

This is the 2nd programming exercise of the R-programming course.

### Cache the inverse of a matrix 

Normally the inverse calculatation of a matrix is expensive. 
That is why we want to cache the result, if the matrix is not changed
then we will not re-compute.


### functions
function: makeCacheMatrix
description: This function creates a special "matrix" object that can cache its inverse.


function: cacheSolve
description: This function computes the inverse of the special "matrix" returned by makeCacheMatrix
