# Install driver 455 version (Ubuntu 18.04) - DOESNT WORK ON THE PAPERSPACE MACHINES
sudo apt-get --purge remove "*nvidia*" && \
sudo apt-get autoremove && \
sudo add-apt-repository ppa:graphics-drivers/ppa && \
sudo apt-get update && \
sudo apt install nvidia-455