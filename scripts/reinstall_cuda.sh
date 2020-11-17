# Install CUDA 10.1 (Ubuntu 18.04) - DOESNT WORK ON THE PAPERSPACE MACHINES
sudo apt-get --purge remove "*cublas*" "cuda*" "nvidia-cuda*" && \
sudo apt-get autoremove && \
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/cuda-repo-ubuntu1804_10.1.105-1_amd64.deb && \
sudo dpkg -i cuda-repo-ubuntu1804_10.1.105-1_amd64.deb && \
sudo apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub && \
sudo apt-get install cuda-10-1 && \
rm cuda-repo-ubuntu1804_10.1.105-1_amd64.deb && \
echo "export PATH=\"/usr/local/cuda-10.1/bin:\$PATH\" \nexport LD_LIBRARY_PATH=\"/usr/local/cuda-10.1/lib64:\$LD_LIBRARY_PATH\"" >> ~/.bashrc && \
source ~/.bashrc