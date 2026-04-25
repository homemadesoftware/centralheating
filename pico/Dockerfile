FROM pico-compiler-base

# Pico SDK and Waveshare ePaper are provided via mounted submodules
ENV PICO_SDK_PATH=/usr/src/project/pico/libs/pico-sdk
ENV waveshare_epaper=/usr/src/project/pico/libs/waveshare

WORKDIR /usr/src
RUN git clone https://github.com/raspberrypi/picotool.git
WORKDIR /usr/src/picotool
RUN cmake -S . -B build
RUN cmake --build build --parallel 4
RUN cmake --install build

WORKDIR /usr/src/project/pico
