# AthleteAI #


## What The F*ck Is AthleteAI? ## 

AthleteAI is a program that tracks an athlete's performance in practice and live events.


## How The F*ck Does It Do That? ##

AthleteAI uses stereo-camera technology to sense the world in 3D.
With a 3D representation of the world, specific elements (like an athlete) can be 
    extracted and tracked using state-of-the-art filtering techniques. 


## How The F*ck Do I Run This Project? ##


### Hardware Requirements ### 

1. Luxonis OakD Stereo Camera (Project tested with OakD-PoE).


### Software Requirements ###

Almost all of the software required to compile AthleteAI can be found in the `Libraries` folder.
Other third party libraries are included below,

1. OpenCV (project uses V4.5.4, unsure of minimum required version).


2. Submodules included with the library.

    Pull and update submodules with `git submodule update --init --recursive 

### Building ###

From the AthleteAI root directory:

```bash
mkdir build
cd build
cmake ..
make
```

### Running ###

Connect the camera to the computer running AthleteAI.
From the `build` folder, run:

```bash
./main
```

Or, from the AthleteAI root directory, run:

```bash
./build/main
```