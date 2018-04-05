# example_peps

This repository contains examples of [Portable Encapsulated Projects](http://pepkit.github.io). Explore the examples interactively with `python` or `R`:


## Python

Your basic python workflow uses the [peppy](http://github.com/pepkit/peppy) package and starts out like this:

```{python}
import peppy
proj1 = peppy.Project("example1/project_config.yaml")
```

These Jupyter notebooks show you how to explore these examples interactively in python:

* [Basic peppy tutorial](tutorial.ipynb) - use `peppy` to load up a minimal example PEP.
* [Sample subannotation](subannotation.ipynb) - how to use subannotations.


## R

Your basic `R` workflow uses the [pepr](http://github.com/pepkit/pepr) package and starts like this:

```{r}
library('pepr')
p = pepr::Project("example1/project_config.yaml")
```

More detailed R vignettes are available as part of the [documentation for the pepr package](http://code.databio.org/pepr).