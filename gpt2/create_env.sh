eval "$(command conda 'shell.bash' 'hook' 2> /dev/null)"
conda deactivate && \
conda create -y -n gpt2 pip python cudnn cupti cudatoolkit=10.0 tensorflow-gpu=1.15 && \
conda activate gpt2 && \
pip install -r requirements.txt && \
conda activate deactivate