FROM lopsided/archlinux:latest

RUN pacman -Syu --noconfirm sudo \
 && useradd -m builder \
 && echo "builder ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

USER builder
WORKDIR /home/builder
