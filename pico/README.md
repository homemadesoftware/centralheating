# Pico Central Heating

##  Build instructions

1. `build-base.ps1` builds the `DockerFileBase` image
2. `setup-sdk.ps1` sets up the RP Pico SDK and ePaper repos, and configures
   cmake ready to be built
3. `compile.ps1` builds the project with make, and flashes pico

## Development instructions

You only need to keep rerunning step 3 above, UNLESS you have edited
`CMakeLists.txt`, in which case first running step 2 becomes necessary.

The file put in the RP pico is:

```
C:\Users\huseyin\source\repos\centralheating\pico\build\my_project.uf2
```

When you run `compile.ps1`, it will attempt to flash the pico at E:\
if available. The pico should be ready to be written to.

You DON'T need to unplug the pico, there is a special setup that allows the
reset button to be pressed when plugged in.



---------------

Step 1				Artifact
build-base.ps1		mybase

Step 2
setup-sdk.ps1		compiler-image

Step 3
compile.ps1		   UF2 file on mounted



