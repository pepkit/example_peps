# example_peps

## Example 1: basic example

```{python}
import pep

p1 = pep.Project("code/example_peps/example1/project_config.yaml")
p.samples[0].file
``` 

Result: `'data/frog1_data.txt'`


## Example 2: merge table

Example 2 demonstrates how a merge table is used. In this example, 2 samples have multiple input files that need merging (`frog_1` and `frog_2`), while 1 sample (`frog_3`) does not. Therefore, `frog_3` specifies its file in the `sample_annotation` table, while the others leave that field blank and instead specify several files in the `merge_table`.

```{python}
import pep
p2 = pep.Project("code/example_peps/example2/project_config.yaml")
p2.samples[0].file
```

Result: `'data/frog1a_data.txt data/frog1b_data.txt data/frog1c_data.txt'`


# Example 3: merges and derived columns

Example 3 uses a merge table and a derived column to point to files. This is a rather complex example. Notice we must include the `file_id` column in the `sample_annotation` table, and leave it blank; this is then populated by just some of the samples (`frog_1` and `frog_2`) in the merge table, but is left empty for the samples that are not merged.

```{python}
import pep
p3 = pep.Project("code/example_peps/example3/project_config.yaml")
p3.samples[0].file

In [8]: p3.samples[0].file
Out[8]: '../data/frog1a_data.txt ../data/frog1b_data.txt ../data/frog1c_data.txt'

In [9]: p3.samples[1].file
Out[9]: '../data/frog2a_data.txt ../data/frog2b_data.txt'

In [15]: p3.samples[2].file
Out[15]: '../data/frog3_data.txt'

In [16]: p3.samples[3].file
Out[16]: '../data/frog4_data.txt
```

