proj_DEP-3_RTD-1
==============================
[//]: # (Badges)

| **Latest release** | [![Last release tag](https://img.shields.io/github/release-pre/cookie/repo_DEP-3_RTD-1.svg)](https://github.com/cookie/repo_DEP-3_RTD-1/releases) ![GitHub commits since latest release (by date) for a branch](https://img.shields.io/github/commits-since/cookie/repo_DEP-3_RTD-1/latest)  [![Documentation Status](https://readthedocs.org/projects/repo_DEP-3_RTD-1/badge/?version=latest)](https://repo_DEP-3_RTD-1.readthedocs.io/en/latest/?badge=latest)|
| :------ | :------- |
| **Status** | [![GH Actions Status](https://github.com/cookie/repo_DEP-3_RTD-1/actions/workflows/gh-ci.yaml/badge.svg)](https://github.com/cookie/repo_DEP-3_RTD-1/actions?query=branch%3Amain+workflow%3Agh-ci) [![codecov](https://codecov.io/gh/cookie/repo_DEP-3_RTD-1/branch/main/graph/badge.svg)](https://codecov.io/gh/cookie/repo_DEP-3_RTD-1/branch/main) [![Language grade: Python](https://img.shields.io/lgtm/grade/python/g/cookie/repo_DEP-3_RTD-1.svg?logo=lgtm&logoWidth=18)](https://lgtm.com/projects/g/cookie/repo_DEP-3_RTD-1/context:python) |
| **Community** | [![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)  [![Powered by MDAnalysis](https://img.shields.io/badge/powered%20by-MDAnalysis-orange.svg?logoWidth=16&logo=data:image/x-icon;base64,AAABAAEAEBAAAAEAIAAoBAAAFgAAACgAAAAQAAAAIAAAAAEAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAJD+XwCY/fEAkf3uAJf97wGT/a+HfHaoiIWE7n9/f+6Hh4fvgICAjwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACT/yYAlP//AJ///wCg//8JjvOchXly1oaGhv+Ghob/j4+P/39/f3IAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAJH8aQCY/8wAkv2kfY+elJ6al/yVlZX7iIiI8H9/f7h/f38UAAAAAAAAAAAAAAAAAAAAAAAAAAB/f38egYF/noqAebF8gYaagnx3oFpUUtZpaWr/WFhY8zo6OmT///8BAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgICAn46Ojv+Hh4b/jouJ/4iGhfcAAADnAAAA/wAAAP8AAADIAAAAAwCj/zIAnf2VAJD/PAAAAAAAAAAAAAAAAICAgNGHh4f/gICA/4SEhP+Xl5f/AwMD/wAAAP8AAAD/AAAA/wAAAB8Aov9/ALr//wCS/Z0AAAAAAAAAAAAAAACBgYGOjo6O/4mJif+Pj4//iYmJ/wAAAOAAAAD+AAAA/wAAAP8AAABhAP7+FgCi/38Axf4fAAAAAAAAAAAAAAAAiIiID4GBgYKCgoKogoB+fYSEgZhgYGDZXl5e/m9vb/9ISEjpEBAQxw8AAFQAAAAAAAAANQAAADcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAjo6Mb5iYmP+cnJz/jY2N95CQkO4pKSn/AAAA7gAAAP0AAAD7AAAAhgAAAAEAAAAAAAAAAACL/gsAkv2uAJX/QQAAAAB9fX3egoKC/4CAgP+NjY3/c3Nz+wAAAP8AAAD/AAAA/wAAAPUAAAAcAAAAAAAAAAAAnP4NAJL9rgCR/0YAAAAAfX19w4ODg/98fHz/i4uL/4qKivwAAAD/AAAA/wAAAP8AAAD1AAAAGwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALGxsVyqqqr/mpqa/6mpqf9KSUn/AAAA5QAAAPkAAAD5AAAAhQAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADkUFBSuZ2dn/3V1df8uLi7bAAAATgBGfyQAAAA2AAAAMwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB0AAADoAAAA/wAAAP8AAAD/AAAAWgC3/2AAnv3eAJ/+dgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA9AAAA/wAAAP8AAAD/AAAA/wAKDzEAnP3WAKn//wCS/OgAf/8MAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIQAAANwAAADtAAAA7QAAAMAAABUMAJn9gwCe/e0Aj/2LAP//AQAAAAAAAAAA)](https://www.mdanalysis.org)
|

A short description of the project.

proj_DEP-3_RTD-1 is bound by a [Code of Conduct](https://github.com/cookie/repo_DEP-3_RTD-1/blob/main/CODE_OF_CONDUCT.md).

### Installation

To build proj_DEP-3_RTD-1 from source,
we highly recommend using virtual environments.
If possible, we strongly recommend that you use
[Anaconda](https://docs.conda.io/en/latest/) as your package manager.
Below we provide instructions both for `conda` and
for `pip` (using [Poetry](https://python-poetry.org/docs/)).

#### With conda

Ensure that you have [conda](https://docs.conda.io/projects/conda/en/latest/user-guide/install/index.html) installed.

Create a virtual environment and activate it:

```
conda create --name repo_DEP-3_RTD-1
conda activate proj_DEP-3_RTD-1
```

Install the development and documentation dependencies:

```
conda install --name proj_DEP-3_RTD-1 --file devtools/conda-envs/test_env.yaml
conda install --name proj_DEP-3_RTD-1 --file docs/requirements.yaml
```

Build this package from source:

```
pip install -e .
```

If you want to update your dependencies (which can be risky!), run:

```
conda update --all
```

And when you are finished, you can exit the virtual environment with:

```
conda deactivate
```

#### With pip

Ensure that you have [Poetry](https://python-poetry.org/docs/#installation) installed.
Activate your virtual environment by running the below.
If this is the first time you have used a virtual environment for proj_DEP-3_RTD-1,
Poetry will both create and activate it at the same time.

```
poetry shell
```

You can install this package and its dependencies with the following command:

```
poetry install
```

If you want to update your dependencies (which can be risky!), run:

```
poetry update
```

And when you are finished, you can exit the virtual environment with:

```
exit
```

Poetry has more information about managing environments
at its [documentation](https://python-poetry.org/docs/managing-environments/).


### Copyright

The proj_DEP-3_RTD-1 source code is hosted at https://github.com/cookie/repo_DEP-3_RTD-1
and is available under the GNU General Public License, version 3 (see the file [LICENSE](https://github.com/cookie/repo_DEP-3_RTD-1/blob/main/LICENSE)).

Copyright (c) 2022, cookie monster


#### Acknowledgements
 
Project based on the 
[MDAnalysis Cookiecutter](https://github.com/MDAnalysis/cookiecutter-mda) version 0.1.
Please cite [MDAnalysis](https://github.com/MDAnalysis/mdanalysis#citation) when using proj_DEP-3_RTD-1 in published work.