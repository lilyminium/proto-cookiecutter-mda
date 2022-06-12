#!/usr/bin/env bash

# Regenerate the reference workflow scripts


mkdir -p reference_files

for filetype in CI sphinx_conf README test_env; do
    mkdir reference_files/${filetype}
done

for DEP in 1 2 3; do
  for RTD in 1 2 ; do
    NAME="DEP-${DEP}_RTD-$RTD"
    REPO="repo_${NAME}"
    python setup_cookiecutter.py \
      --project proj_${NAME} \
      --repo $REPO \
      --account cookie \
      --dependencies ${DEP} \
      --rtd ${RTD} \
      --cookiecutter ..

    mv ${REPO}/.github/workflows/gh-ci.yaml reference_files/CI/gh-ci_${NAME}.yaml
    mv ${REPO}/docs/conf.py reference_files/sphinx_conf/conf_${NAME}.py
    mv ${REPO}/README.md reference_files/README/README_${NAME}.md
    mv ${REPO}/devtools/conda-envs/test_env.yaml reference_files/test_env/test_env_${NAME}.yaml

    rm -rf ${REPO}
  done
done
