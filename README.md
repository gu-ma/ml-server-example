# Server examples


## 1) Setup the machine

### 1.1) First you need to ssh into your machine 

#### Datacrunch:

replace `PATH_TO_SSHKEY` with the path to your local ssh key and `IP_ADDRESS_SERVER` with the server's IP address:

```
ssh -i ~/.ssh/PATH_TO_SSHKEY user@IP_ADDRESS_SERVER
```

#### Paperspace:

Use the password you received by email to login, replace `IP_ADDRESS_SERVER` with the server's IP address:

```
ssh paperspace@IP_ADDRESS_SERVER
```

### 1.2) Setup Jupyter notebook ([reference](https://medium.com/@datamove/setup-jupyter-notebook-server-to-start-up-on-boot-and-use-different-conda-environments-147b091b9a5f)):

Create a new env only for notebooks
```
conda create -n notebook_env jupyter nb_conda_kernels pip
```

Create the service file:
``` 
sudo touch /lib/systemd/system/ipython-notebook.service
sudo vim /lib/systemd/system/ipython-notebook.service
```

Example of service file for Paperspace. (eventually change the PATH, Jupyter notebook path / options, User, Group or WorkingDir.)
Copy paste this in Vim (i, cmd+v, esc, :wq) 
```
[Unit]
    Description=IPython notebook
[Service]
    Type=simple
    PIDFile=/var/run/ipython-notebook.pid
    Environment="PATH=/home/paperspace/anaconda3/envs/notebook_env/bin:/home/paperspace/bin:/home/paperspace/.local/bin:/usr/local/cuda-10.0/bin:/home/paperspace/anaconda3/condabin:/home/paperspace/anaconda3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin"
    ExecStart=/home/paperspace/anaconda3/envs/notebook_env/bin/jupyter-notebook --no-browser --notebook-dir=/home/paperspace --NotebookApp.token='my_pasword' --ip=0.0.0.0
    User=paperspace
    Group=paperspace
    WorkingDirectory=/home/paperspace
[Install]
    WantedBy=multi-user.target
```
 
Load and start the service:
```
sudo systemctl daemon-reload
sudo systemctl start ipython-notebook
```

Check if it's running:
```
sudo systemctl status ipython-notebook
```

Enable it so that the service start on boot
```
sudo systemctl enable ipython-notebook
```

you can connect to the notebook at: http://IP_ADDRESS_SERVER:8888/ and change kernel using the menu: 'kernel', 'change kernel' when starting a notebook 

## 2) Use notebooks

### 2.1) clone this repo:

```
git clone https://github.com/gu-ma/ml-server-example.git
```

### 2.2) Stylegan2-ada

Create environment (you only need to do that once):

```
cd sg2ada
chmod +x create_env.sh
./create_env.sh
```

#### Quickfix(es)

For Stylegan2-ada to run on Paperspace we need to run this command once:

```
echo "export PATH=\"/usr/local/cuda-10.0/bin:\$PATH\" \nexport LD_LIBRARY_PATH=\"/usr/local/cuda-10.0/lib64:\$LD_LIBRARY_PATH\"" >> ~/.bashrc && \
source ~/.bashrc
```

Also, you might run into this error: https://github.com/NVlabs/stylegan2-ada/issues/2

### 2.3) GPT2

Create environment (you only need to do that once):

```
cd gpt2
chmod +x create_env.sh
./create_env.sh
```
