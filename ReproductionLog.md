# python conda env

```bash
conda create -n derl python=3.10
conda activate derl
pip install -r requirements.txt
pip install "cython<3"

```

# system env

apt install

```bash

sudo apt update

sudo apt-get install -y curl git cmake unzip bzip2 wget libgl1-mesa-dev libgl1-mesa-glx libglew-dev libosmesa6-dev libopenmpi-dev software-properties-common net-tools vim virtualenv ffmpeg xpra libglfw3 xserver-xorg-dev

sudo apt install patchelf -y

```

add env path

```bash
mkdir -p $HOME/.mujoco \
    && wget https://www.roboti.us/download/mujoco200_linux.zip -O mujoco.zip \
    && unzip mujoco.zip -d $HOME/.mujoco \
    && mv $HOME/.mujoco/mujoco200_linux $HOME/.mujoco/mujoco200 \
    && rm mujoco.zip

# Set environment variables
echo "export LD_LIBRARY_PATH=$HOME/.mujoco/mujoco200/bin:\$LD_LIBRARY_PATH" >> ~/.bashrc
echo "export LD_LIBRARY_PATH=/usr/local/nvidia/lib64:\$LD_LIBRARY_PATH" >> ~/.bashrc
echo "export MUJOCO_PY_MUJOCO_PATH=$HOME/.mujoco/mujoco200" >> ~/.bashrc

# download mjkey.txt from web
echo "export MUJOCO_PY_MJKEY_PATH=$HOME/.mujoco/mjkey.txt" >> ~/.bashrc

# Copy and set up Xdummy
sudo cp docker/build_files/Xdummy /usr/local/bin/Xdummy
sudo chmod +x /usr/local/bin/Xdummy

# Apply environment variables to current session
export LD_LIBRARY_PATH=$HOME/.mujoco/mujoco200/bin:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/usr/local/nvidia/lib64:$LD_LIBRARY_PATH
export MUJOCO_PY_MUJOCO_PATH=$HOME/.mujoco/mujoco200
export MUJOCO_PY_MJKEY_PATH=$HOME/.mujoco/mjkey.txt
```
