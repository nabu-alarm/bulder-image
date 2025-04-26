FROM lopsided/archlinux:latest

# Install dependencies and setup builder user
RUN pacman -Syu --noconfirm sudo git && \
    useradd -m builder && \
    echo "builder ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers && \
    mkdir -p /__w /github/home /github/workflow && \
    chown -R builder:builder /__w /github && \
    chmod -R 777 /__w /github

# Set environment variables
ENV HOME=/home/builder
USER builder
WORKDIR /home/builder
