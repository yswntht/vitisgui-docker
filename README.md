# vitisgui-docker

1. tested on Host OS: ubuntu 22.04
2. make sure to download Vitis 2022.1 to /tools/Xinlix/Downloads/
3. make sure to run 'xhost local:docker' for to enable gui
4. build the image with 'build.sh' and start the container using 'run.sh'
5. once the container is launched, followup the gui installation: './xsetup' from docker.

Note: I only tested for c-simulation and synthesis. For implementation, bitstream, and programming the board you are on your own. 

Due to a bug, gui fails to open. check the xilinx forum for the [fix](https://support.xilinx.com/s/question/0D52E00006hpY4PSAU/vitishls-20202-not-starting-only-splash-screen-visible?language=en_US). 
below fix from the forum worked for me:
Go to line 40 'xilinx/Vitis_HLS/2020.2/common/scripts/autopilot_init.tcl', and update last character of the string.

    ----%r&-'%rl%&n$&lt'v-=

Replace the last = with >, should look like

    ----%r&-'%rl%&n$&lt'v->
