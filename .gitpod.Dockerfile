FROM gitpod/workspace-full

# Install Git LFS
RUN sudo apt-get -q update && \
    sudo apt-get install -y software-properties-common && \
    sudo curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash && \
    sudo apt-get install -y git-lfs && \
    sudo rm -rf /var/lib/apt/lists/* && \
    git lfs install