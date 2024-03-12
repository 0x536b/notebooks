# AirSim Notes

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
