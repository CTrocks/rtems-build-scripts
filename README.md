# rtems-toolchain-scripts
Helper scripts for RTEMS toolchain build with RTEMS Source Builder

## How to build

The scripts have been tested with Ubuntu 18.04 LTS (Bionic).

Start the build process with by executing script `run.sh`. Before, please ensure, that the following environment variables are set:

`TARGET_ARCH`: target architecture symbol, e.g. `sparc`, `arm`, `x86_64` etc. The symbol must match the architecture strings defined by RTEMS projecct, a list can be found in the [RTEMS documentation](https://docs.rtems.org/branches/master/user/hardware/architectures.html).

`INSTALL_DIR`: installation directory for the toolchain, e.g. `/opt/rtems`. Please ensure that the user running the build script has write access to the installation directory.

Once the variables are set, run the mentioned script:
```code sh
./run.sh
```

WARNING: The build will change GCC version on your system. I will provide a Dockerfile as soon as possible so that running the build won't require any changes of your system configuration! The corresponding file will be located in a separate repository:  [RTEMS Toolchain Build with Docker](https://github.com/CTrocks/rtems-build-defs-docker)

## Changing build parameters

Currently, the configuration of RTEMS Source Builder, which is used to build the toolchain, can only be set by editing script `config.sh` (folder `scripts`). By default, Ada language support is enabled. For further information on parameters of RTEMS Source Builder, check related [documentation](https://docs.rtems.org/branches/master/rsb/source-builder.html).

