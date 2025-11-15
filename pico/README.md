# Pico Central Heating

##  Build instructions

1. `build-base.ps1` builds the `DockerFileBase` image
2. `setup-sdk.ps1` sets up the RP Pico SDK and ePaper repos, and configures cmake
3. `compile.ps1` builds the project with make

## Development instructions

You only need to keep rerunning step 3 above, UNLESS you have edited
`CMakeLists.txt`, in which case first running step 2 becomes necessary.

The file to put in the RP pico is:

```
C:\Users\huseyin\source\repos\centralheating\pico\build\my_project.uf2
```