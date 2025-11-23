# Pico Central Heating

##  Build instructions

1. `build-base.ps1` builds the `BaseDockerFile` image. This includes OS and C compiler
2. `setup-compiler.ps1` sets up the RP Pico SDK and ePaper repos, and configures
   cmake ready to be built
3. `compile.ps1` builds the project with make, and flashes pico

## Development instructions

You only need to keep rerunning step 3 above, UNLESS you have edited
`CMakeLists.txt`, in which case first running step 2 becomes necessary.

The file put in the RP pico is:

```
centralheating\pico\build\my_project.uf2
```

When you run `compile.ps1`, it will attempt to flash the pico at E:\
if available. The pico should be ready to be written to.

You DON'T need to unplug the pico, there is a special setup that allows the
reset button to be pressed when plugged in.

