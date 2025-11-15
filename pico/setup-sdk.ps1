docker build . -f Dockerfile -t compiler-image
docker rm sdk-image
docker run -v ${PWD}:/usr/src/project --name sdk-image compiler-image bash -c "cmake -S . -B build"