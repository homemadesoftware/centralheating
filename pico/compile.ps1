docker build . -f Dockerfile -t compiler-image
docker rm compiler
## docker run -dit -v ${PWD}:/usr/src/project --name compiler compiler-image "/usr/src/compile.sh" " blah"
docker run -v ${PWD}:/usr/src/project --name compiler compiler-image bash "/usr/src/project/pico-compiler.sh" 
