# datacrunch-stylegan2-ada

## Create and activate env

ssh into your machine (replace `id_ed25519_datacrunch` with your local public key and `135.181.63.136` with the server IP address):

```
ssh -i ~/.ssh/id_ed25519_datacrunch user@135.181.63.136
```

clone this repo and create env

```
git clone git@github.com:gu-ma/datacrunch-stylegan2-ada.git
cd datacrunch-stylegan2-ada
chmod +x create_env.sh
./create_env.sh
```

## Activate env and start Jupyter Notebook

Next time you connect you do not need to run all this, you can just ssh and run:
```
conda activate stylegan2-ada
jupyter notebook password
jupyter notebook --ip=0.0.0.0 --port=9999
```