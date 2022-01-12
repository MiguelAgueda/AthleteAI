# Get Ubuntu image from Docker Hub
FROM ubuntu

ARG DEBIAN_FRONTEND=noninteractive

RUN set -ex;
RUN apt-get update;
# RUN apt-get upgrade -y;
RUN apt-get install -y git cmake g++ gcc libusb-1.0-0-dev libopencv-dev;

# Copy the current folder which contains C++ source code to the Docker image under /usr/src
COPY . /usr/src/dockertest1

# Specify the working directory
WORKDIR /usr/src/dockertest1

RUN cd Libraries/OakD && git submodule update --init --recursive
# Use GCC to compile the Test.cpp source file
RUN cd /usr/src/dockertest1 && rm -rf build && mkdir -p build && cd build && cmake .. && make -j 

# Run the program output from the previous step
# CMD ["./Test"]

LABEL Name=athleteai Version=0.0.1
