docker build . -f Dockerfile -t compiler-image
docker rm compiler
docker run -v ${PWD}:/usr/src/project --name compiler compiler-image bash "/usr/src/project/pico-compiler.sh" 
