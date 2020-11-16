# Server examples

## Start

First you need to ssh into your machine 

### For Datacrunch:

replace `PATH_TO_SSHKEY` with the path to your local ssh key and `IP_ADDRESS_SERVER` with the server's IP address:

```
ssh -i ~/.ssh/PATH_TO_SSHKEY user@IP_ADDRESS_SERVER
```

### For Paperspace:

Use the password you received by email to login, replace `IP_ADDRESS_SERVER` with the server's IP address:

```
ssh paperspace@IP_ADDRESS_SERVER
```

Once you're on the server clone this repo:

```
git clone https://github.com/gu-ma/ml-server-example.git
```

## 1) Stylegan2-ada

Create environment (you only need to do that once):

```
chmod +x sg2ada_create_env.sh
./sg2ada_create_env.sh
```

Activate env and start Jupyter Notebook _(you only need to set the Jupyter password once)_:

```
conda activate stylegan2-ada
jupyter notebook password
jupyter notebook --ip=0.0.0.0 --port=9999
```

You might need to allow access to that port in the firewall (on Paperspace) by typing: `sudo ufw allow 9999` (you can check if the firewall is running like that: `sudo ufw status`)

Then open your browser at `http://IP_ADDRESS_SERVER:9999/`

## 2) GPT2