FROM pytorch/pytorch:latest
LABEL maintainer="sangho"
LABEL description="PyTorch Docker Image"
LABEL version="0.1"
 

RUN apt update && apt upgrade -y
RUN apt install -y sudo

# ==============================================================================
# Build Essential
# ==============================================================================
RUN sudo apt-get install -y \
    build-essential \
    curl \
    git \
    wget \
    htop \
    jq \
    libcurl4-openssl-dev \
    libssl-dev \
    libxml2-dev \
    libxslt1-dev \
    libyaml-dev \
    software-properties-common \
    unzip \
    zlib1g-dev \
    vim \ 
    libgl1-mesa-glx

# ==============================================================================
# Install Data Science Packages via conda
# ==============================================================================
RUN conda install -y numpy scipy pandas matplotlib scikit-learn scikit-image \
    seaborn pillow scikit-learn-intelex jupyter tqdm
RUN conda install -y -c conda-forge jupyterlab

ENV PIP_ROOT_USER_ACTION=ignore
RUN pip install opencv-python
RUN pip install tensorboard
RUN pip install tensorboardX
RUN pip install diffdist
RUN pip install markupsafe==2.0.1
RUN pip install torch torchaudio
RUN pip install librosa==0.7.2
RUN pip install einops 
RUN pip install numba
RUN pip install --upgrade librosa
RUN pip install h5py
RUN pip install plotly
RUN pip install transformers
RUN pip install datasets
RUN pip install tabulate
RUN pip install torch torchvision --upgrade

RUN pip install wandb
RUN pip install torchviz
RUN pip install pytorch-lightning
RUN pip install ax-platform
RUN pip install timm
RUN pip install fvcore
RUN pip install einops
RUN pip install art
RUN pip install gpustat
RUN pip install thop
RUN pip install torchprofile
