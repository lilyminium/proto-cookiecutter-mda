#!/usr/bin/env python

import argparse
import os
import re
import sys
import yaml

parser = argparse.ArgumentParser(description="Converts workflow to action")
parser.add_argument("workflow", help="Path to workflow")
parser.add_argument("action", help="Path to action")

class YamlDumper(yaml.SafeDumper):
    def represent_str(self, data):
        if "\n" in data:
            return super().represent_scalar("tag:yaml.org,2002:str", data, style="|")
        return super().represent_str(data)

def get_replacements():
    VAR_START = r"\$\{\{\s*"
    VAR_END = r"\s*\}\}"
    PYTHON_VERSION_REGEX = VAR_START + r"matrix.python-version" + VAR_END
    OS_REGEX = VAR_START + r"matrix.os" + VAR_END

    verinfo = sys.version_info
    python_version = f"{verinfo.major}.{verinfo.minor}"
    os_name = os.environ["RUN_OS"]

    return {
        PYTHON_VERSION_REGEX: python_version,
        OS_REGEX: os_name,
    }


def load_file(path):
    with open(path, "r") as f:
        contents = f.read()
    
    replacements = get_replacements()
    for pattern, value in replacements.items():
        contents = re.sub(pattern, value, contents)
    return yaml.safe_load(contents)



def job_to_action(job):
    job.pop("runs-on", None)
    job.pop("strategy", None)
    job["using"] = "composite"

    unwanted_steps = [
        "actions/checkout",
        "actions/setup-python",
        "conda-incubator/setup-miniconda",
    ]
    steps = [
        step for step in job.pop("steps", [])
        if not any(
            action in step.get("uses", "")
            for action in unwanted_steps
        )
    ]
    job["steps"] = steps
    return job


def workflow_to_action(workflow, action):
    workflow_dict = load_file(workflow)
    jobs = workflow_dict.pop("jobs", {})
    if len(jobs) != 1:
        raise ValueError("Only one job is supported")
    name = list(jobs.keys())[0]
    job = list(jobs.values())[0]
    action_dict = job_to_action(job)

    action_contents = {
        "name": name,
        "description": name,
        "runs": action_dict
    }

    os.makedirs(action, exist_ok=True)
    action_file = os.path.join(action, "action.yaml")

    with open(action_file, "w") as f:
        yaml.dump(action_contents, f, Dumper=YamlDumper)

if __name__ == "__main__":
    args = parser.parse_args()
    workflow_to_action(args.workflow, args.action)
