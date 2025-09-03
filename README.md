# LPA computational environment (lpa-comp-env)
This is the repository for setting up computational environment for the LPA project. For this we use [Singularity/Apptainer](https://apptainer.org/). The image is created from the definitions and requirements listed in this repository. Currently there is support for creating the Geant4 simulations and running the analysis in Python.


## 1. Setup

In order to setup the computational environment needed for the LPA project:
```bash
git clone git@github.com:Laurits7/lpa-comp-env.git
cd lpa-comp-env
```

### 1.1a Building the image

If you do not have a pre-existing Singularity image, you need to build it:
```bash
singularity build --fakeroot lpa.simg lpa.singularity
```

### 1.1b Having a pre-existing image
If you have already access to a pre-exisiting image, you can enter the environment by doing `apptainer shell /path/to/lpa.simg`

If, however, you wish to submit batch jobs, it is useful to have a 'run script' such as the example one [run.sh](run.sh) in this repository. With this script you can run your code in the LPA environment simply by doing for example `./run.sh python3 my_python_script.py`






