# vitisgui-docker

1. tested on Host OS: ubuntu 22.04
2. make sure to download Vitis 2022.1 to /tools/Xinlix/Downloads/
3. make sure to run 'xhost local:docker' for to enable gui
4. build the image with 'build.sh' and start the container using 'run.sh'
5. once the container is launched, followup the gui installation: './xsetup' from docker.

Note: I only tested for c-simulation and synthesis. For implementation, bitstream, and programming the board you are on your own. 
