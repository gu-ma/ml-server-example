# Install driver 455 version (Ubuntu 18.04)
apt-get --purge remove "*nvidia*" && \
apt-get autoremove && \
add-apt-repository ppa:graphics-drivers/ppa &&\
apt install nvidia-455