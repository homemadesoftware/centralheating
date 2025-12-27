FROM pico-compiler-base

WORKDIR /usr/src
RUN git clone https://github.com/raspberrypi/pico-sdk.git
ENV PICO_SDK_PATH=/usr/src/pico-sdk

WORKDIR /usr/src/pico-sdk
RUN git submodule update --init lib/btstack lib/cyw43-driver lib/lwip

WORKDIR /usr/src
RUN git clone https://github.com/waveshare/Pico_ePaper_Code.git
ENV waveshare_epaper=/usr/src/Pico_ePaper_Code


WORKDIR /usr/src
RUN git clone https://github.com/raspberrypi/picotool.git
WORKDIR /usr/src/picotool
RUN cmake -S . -B build
RUN cmake --build build --parallel 4
RUN cmake --install build

WORKDIR /usr/src/project/pico
