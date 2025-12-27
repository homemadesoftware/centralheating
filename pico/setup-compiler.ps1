# Build the compiler image which is based on the base image + tools/sdks + build folder with artifacts
docker build . -f Dockerfile -t pico-compiler-image

# remove any previous continers running on the previous image
docker rm pico-compiler

# Run the container once so it binds to our source files and gets ready
docker run  `
    --name pico-compiler   				        `
    -v ${PWD}/../Common:/usr/src/project/Common `
	-v ${PWD}:/usr/src/project/pico				`
	-v /usr/src/project/pico/build				`
	pico-compiler-image                     	`
	/bin/bash /usr/src/project/pico/in-docker-compiler.sh

