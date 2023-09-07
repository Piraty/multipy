# Multipy

Build and install multiple versions of python into a user-controlled prefix

Put the prefix' `bin` dir in your `$PATH` and have all python version within
reach.

    ./multipy 3.9 3.10 3.11
    PATH="$HOME/multipy/bin:$PATH"
    command -v python3.11

## Usage

    multipy [PYTHON_VERSION...] - build and install multiple versions of python

    PYTHON_VERSION denotes the version to build+install and may be one or more of
        (empty)          same as 'latest'
        latest           latest stable release (3.11)
        pre-release      latest pre-release (3.12)
        X                lastest release of that branch
        X.Y              lastest release of that branch
        X.Y.Z            exact release

    Environment
        MULTIPY_PREFIX           where to install. default: $HOME/multipy

        CONFIGURE_ARGS           passed to './configure'
        MAKEJOBS                 passed to make, defaults to $(nproc)
        MAKE_BUILD_ARGS          passed to 'make'
        MAKE_INSTALL_ARGS        passed to 'make install'

        CC,CFLAGS and friends    as usual (it's autotools afterall)
