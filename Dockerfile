FROM lopsided/archlinux:latest

RUN pacman -Syu --noconfirm sudo \
 && useradd -m builder \
 && echo "builder ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers \
 && mkdir -p /__w && chmod 777 /__w  # Add GitHub Actions workspace support

USER builder
WORKDIR /home/builder
