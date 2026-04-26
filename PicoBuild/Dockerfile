FROM pico-compiler-base

# Clone pico-sdk with required submodules - baked into the image so
# any project can build without needing the SDK locally
WORKDIR /usr/src
RUN git clone https://github.com/raspberrypi/pico-sdk.git
WORKDIR /usr/src/pico-sdk
RUN git submodule update --init lib/btstack lib/cyw43-driver lib/lwip
ENV PICO_SDK_PATH=/usr/src/pico-sdk

# Clone Waveshare ePaper library
WORKDIR /usr/src
RUN git clone https://github.com/waveshare/Pico_ePaper_Code.git
ENV waveshare_epaper=/usr/src/Pico_ePaper_Code

# Build and install picotool
WORKDIR /usr/src
RUN git clone https://github.com/raspberrypi/picotool.git
WORKDIR /usr/src/picotool
RUN cmake -S . -B build
RUN cmake --build build --parallel 4
RUN cmake --install build

WORKDIR /usr/src/project
