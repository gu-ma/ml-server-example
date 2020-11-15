# 455 version
apt-get --purge remove "*nvidia*" && \
apt-get autoremove && \
add-apt-repository ppa:graphics-drivers/ppa &&\
apt install nvidia-455