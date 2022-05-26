# Conda recipes

This repository contains drafts of conda recipes. They can be tested locally and then uploaded on one of the conda repositories. 

## Building packages

To build packages, we can first create a dedicated building environment if not already present and install the needed packages:
```
conda create -n build
conda install conda-build conda-verify -n build
conda activate build
```

The recipe folder must have at least a `meta.yaml` file inside. To actually build packages from recipes, you need to run `conda-build`. Additional channels for installing dependencies can be specified as below. After building, packages can be found in the output folder.
```
conda-build recipe_folder -c conda-forge -c bioconda -c defaults --output-folder build/
```

If there is no test section in the recipe, the package can be installed locally for testing. This should be done in a dedicated environment:
```
conda create env_name
conda install pckg_name -c build/ -c conda-forge -c bioconda -c defaults -n env_name
```

For more information about writing recipes, see the [documentation](https://docs.conda.io/projects/conda-build/en/latest/resources/define-metadata.html#).
