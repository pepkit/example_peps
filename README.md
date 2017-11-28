# example_peps

Load an example in python:

```{python}

import pep

p1 = pep.Project("code/example_peps/example1/project_config.yaml")
p.samples[0].file
``` 

Result: `'data/frog1_data.txt'`
## Example 2: merge table


```{python}

import pep
p2 = pep.Project("code/example_peps/example2/project_config.yaml")
p2.samples[0].file
```

Result: `'data/frog1a_data.txt data/frog1b_data.txt data/frog1c_data.txt'`
