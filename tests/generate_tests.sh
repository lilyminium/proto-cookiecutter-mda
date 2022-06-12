#!/usr/bin/env bash

# Regenerate the reference workflow scripts

cd ~/workspace
rm -rf test_mda*rtd
/Users/lily/pydev/cookiecutter-mdanalysis/tests/setup_cookiecutter.py --project "Test Project with PyPI and ReadTheDocs" --repo test_mda_pip_rtd --account lilyminium --dependencies 3 --rtd 1 --cookiecutter "/Users/lily/pydev/cookiecutter-mdanalysis"
/Users/lily/pydev/cookiecutter-mdanalysis/tests/setup_cookiecutter.py --project "Test Project with Conda-Forge and ReadTheDocs" --repo test_mda_condaforge_rtd --account lilyminium --dependencies 1 --rtd 1 --cookiecutter "/Users/lily/pydev/cookiecutter-mdanalysis"
/Users/lily/pydev/cookiecutter-mdanalysis/tests/setup_cookiecutter.py --project "Test Project with Anaconda and no ReadTheDocs" --repo test_mda_conda_nortd --account lilyminium --dependencies 2 --rtd 2 --cookiecutter "/Users/lily/pydev/cookiecutter-mdanalysis"

for fname in test_mda_conda_nortd test_mda_condaforge_rtd test_mda_pip_rtd ; do
	cd  ${fname}
	git remote add origin git@github.com:lilyminium/${fname}.git
	git push -f origin main
	cd -
done
