fuzzymonkey
===========

fuzzymonkey is a set of code and data supporting the fuzzy set analysis in Adams et al "Personality Structure and Social Style in Macaques".

## Installation

> library(devtools)  
> install_github('mja/fuzzymonkey')  
> library(fuzzymonkey)

## Load personality structures

Personality structures for Japanese macacques _(Macaca fuscata)_, Barbary macaques _(M. sylvanus)_, Assamese macaques _(M. assamensis)_, and Tonkean macaques _(M. tonkeana)_ are included. Data files are matrices of component loadings with dimensions as columns and items as rows.

> data(fuscata)  
> data(sylvansus)  
> data(assamensis)  
> data(tonkeana)
> data(nigra)

## Fuzzy set analysis

The function `fuzzy_intersect()` takes an arbitrary number of vectors of item loadings labelled with item names (labelling will occur automatically when extracting columns from FA and PCA loadings matrices or from matrix objects with labelled rows). For example, to find the fuzzy intersection of the Dominance/Confidence components from each personality structure:

> fuzzy_intersect(fuscata[,1], sylvanus[,1], assamensis[,1], nigra[,2], tonkeana[,1])

The resulting vector gives the fuzzy membership of each item.
