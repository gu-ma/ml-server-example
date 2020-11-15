# Remove existing 
apt-get --purge remove "*cublas*" "*cufft*" "*curand*" "*cusolver*" "*cusparse*" "*npp*" "*nvjpeg*" "cuda*" "nsight*" && \
apt-get autoremove && \
# Get the 10.1 version of CUDA
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/cuda-repo-ubuntu1804_10.1.105-1_amd64.deb && \
dpkg -i cuda-repo-ubuntu1804_10.1.105-1_amd64.deb && \
apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub && \
apt-get update && \
apt-get install cuda-10-1 && \
rm cuda-repo-ubuntu1804_10.1.105-1_amd64.deb && \
# Add to path
echo "export PATH=\"/usr/local/cuda-10.1/bin:\$PATH\" \nexport LD_LIBRARY_PATH=\"/usr/local/cuda-10.1/lib64:\$LD_LIBRARY_PATH\"" >> ~/.bashrc && \
source .bashrc && \