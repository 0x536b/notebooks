# AirSim Notes

## Hardware-in-the-loop simulation
### Hardware description
- Using the components from NXP's Game of drones kit.
- Flight Controller - [NXP FMU](https://nxp.gitbook.io/hovergames/userguide/getting-started/drone-kit-contents#nxp-rddrone-fmuk66-with-enclosure-and-microsd-card)
- Remote Controller - FlySky FS-i6S RC
### Setup
- Just follow the steps found in the official doc for the NXP FMU. Its pretty straight forward if you have ubuntu machine or a windows machine. But its easy to figure out.
- https://nxp.gitbook.io/hovergames/downloads#flysky-i-6-s-radio-controller-firmware-updater
- Flash the official firmware, by choosing "custom firmware" option on the QGround control.

## Build/Install on macOS with Apple Silicon
- My laptop
  - Macbook Pro, 16-inch, 2023
  - M2 Pro
  - 16GB RAM
  - 1TB SSD
  - macOS Sonoma
- Followed this [YT video](https://www.youtube.com/watch?v=hXYWLF3QsNk)
- Also followed this [Github issue](https://github.com/microsoft/AirSim/issues/4922#issuecomment-1974095216) on the offical airsim repo.
- Download and install Epic Games Lanucher. Needed for Unreal Engine download. Need to have epic games account too.
- Go to the "Unreal engine tab"
- Download UE 5.2. Its around 15.7GB.
- I downloaded a fork of airsim called the [Colosseum](https://github.com/CodexLabsLLC/Colosseum.git). It supports UE5 and it is the version that the video builds for macOS.
- Ran the following commands
```bash
git clone https://github.com/CodexLabsLLC/Colosseum.git
cd Colosseum
time ./setup.sh # 44.9 s
time ./build.sh # 40.335 s

# note the directory of your UE5 install
cd Unreal/Environments/Blocks
time ./GenerateProjectFiles.sh /<path to the folder>/UE_5.2/ # 6s 
open Blocks.xcworkspace/

# xcode opens. presss cmd+B to build
# you will face an error
# so do following in the menu bar
# Product -> Destination -> Destination Architectures -> Show both
# Now click "My mac" in the middle bar and select "My mac(rosetta)"
# cmd+b to build again
# it should say build succeeded. 

# Now press cmd-r, to launch unreal engine
# Will take really long time and laptop gets hot
# Dont work it will work.
# after launching, click play!

# it will be laggy when you open someother windows to run python scripts. Go to prefernce -> untick "Use less CPU when in bg" option. That will smooth things out.
```


## Pytorch
- wheels for nvidia pytorch - [Link](https://developer.download.nvidia.com/compute/redist/jp/)
- Install Jetpack
- Go to the link
- I downloaded - https://developer.download.nvidia.com/compute/redist/jp/v60dp/pytorch/torch-2.2.0a0+6a974be.nv23.11-cp310-cp310-linux_aarch64.whl
- Then follow steps from here - [Nvidia tutorial](https://docs.nvidia.com/deeplearning/frameworks/install-pytorch-jetson-platform/index.html#prereqs-install)

```bash
sudo apt install virtualenv
python -m virtualenv <name>
source <name>/bin/activate
wget https://developer.download.nvidia.com/compute/redist/jp/v60dp/pytorch/torch-2.2.0a0+6a974be.nv23.11-cp310-cp310-linux_aarch64.whl
export $TORCH_INSTALL=<path>/torch-2.2.0a0+6a974be.nv23.11-cp310-cp310-linux_aarch64.whl
pip install --no-caceh $TORCH_INSTALL
pip install 
```
- export TORCH_INSTALL=path/to/torch-<version>.whl
- pip install --no-cahce $TORCH_INSTALL
- 