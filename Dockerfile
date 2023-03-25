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
