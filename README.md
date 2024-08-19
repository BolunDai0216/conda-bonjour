# conda-bonjour

[![License](https://img.shields.io/badge/License-MIT-cfd8dc?style=flat-square&labelColor=orange&color=lightgray)](https://github.com/BolunDai0216/pypi-bonjour/blob/main/LICENSE)
[![Anaconda](https://img.shields.io/conda/vn/bolundai/conda-bonjour?style=flat-square&labelColor=orange&color=lightgray)](https://anaconda.org/bolundai/conda-bonjour)

Tutorial on packaging with conda 

## v0.0.1: initial commit

Barebone code.

## v0.0.2: added meta.yaml

First, create a release on GitHub. Then, using `grayskull`, which can be installed using

```bash
conda install conda-forge::grayskull
```

we can generate the `meta.yaml` file using the command

```bash
grayskull pypi https://github.com/BolunDai0216/conda-bonjour
```

We can save this file at `conda-bonjour/meta.yaml`.

## v0.0.3: upload package to Anaconda

> [!NOTE]
> You need to create a new release on GitHub for each new version of the package and rerun `grayskull` to update the `meta.yaml` file (just the version and source information).

First, install `conda-build` and `anaconda-client`:

```bash
conda install conda-build anaconda-client
```

Then build the package:

```bash
conda build conda-bonjour
```

Finally, upload the package to conda:

```bash
anaconda login
anaconda upload /path/to/conda-bonjour-x.x.x-py_0.tar.bz2
```

This will upload the package to your own channel. For me, it will be at `https://anaconda.org/bolundai/conda-bonjour`. A good resource on this topic can be found [here](https://docs.anaconda.com/anacondaorg/user-guide/packages/conda-packages/#uploading-conda-packages). 

## v0.0.4: added Python bindings of C++ source code

Added the Python bindings of C++ source code.
