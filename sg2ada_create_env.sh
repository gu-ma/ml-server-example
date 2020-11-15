eval "$(command conda 'shell.bash' 'hook' 2> /dev/null)"
conda create -y -n stylegan2-ada pip python cudnn cupti cudatoolkit=10.0 tensorflow-gpu=1.14.0 && \
conda activate stylegan2-ada && \
pip install -r sg2ada_requirements.txt && \
conda deactivate