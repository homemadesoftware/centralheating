FROM pico-compiler-base

# Clone pico-sdk inside the image so picotool can build against it
WORKDIR /usr/src
RUN git clone --depth 1 https://github.com/raspberrypi/pico-sdk.git
ENV PICO_SDK_PATH=/usr/src/pico-sdk

# Build and install picotool
RUN git clone https://github.com/raspberrypi/picotool.git
WORKDIR /usr/src/picotool
RUN cmake -S . -B build
RUN cmake --build build --parallel 4
RUN cmake --install build

# Override PICO_SDK_PATH to use the mounted submodule at runtime
ENV PICO_SDK_PATH=/usr/src/project/pico/libs/pico-sdk
ENV waveshare_epaper=/usr/src/project/pico/libs/waveshare

WORKDIR /usr/src/project/pico
