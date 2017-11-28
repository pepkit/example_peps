# example_peps

## Example 1: basic example

```{python}

import pep

p1 = pep.Project("code/example_peps/example1/project_config.yaml")
p.samples[0].file
``` 

Result: `'data/frog1_data.txt'`


## Example 2: merge table

Example 2 demonstrates how a merge table is used.

```{python}

import pep
p2 = pep.Project("code/example_peps/example2/project_config.yaml")
p2.samples[0].file
```

Result: `'data/frog1a_data.txt data/frog1b_data.txt data/frog1c_data.txt'`
