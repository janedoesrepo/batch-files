# Create conda environment programmatically with batch script

Instead of looking up the commands each time you want to create a conda environment and register an ipykernel for your jupyter notebook, just run this script.

## What does it do?
The script performs the following actions:
 - Create and activate a new conda environment with python
 - Install nb_conda extensions and register an ipykernel for the environment

## Usage
This creates an environment called *tensorflow*, installs *Python 3.7* and registers an ipykernel with the name "Python 3.7 (tensorflow)":

```create_conda_env.cmd tensorflow 3.7```
