# Builds the shared pico-compiler-image used by all Pico projects.
# Run this once from the PicoBuild/ folder, or after any Dockerfile change.
# Each project manages its own container via its own compile.ps1.
docker build . -f Dockerfile -t pico-compiler-image

