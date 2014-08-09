FROM dock0/service
MAINTAINER Jon Chen <bsd@voltaire.sh>

RUN pacman -Syu --needed --noconfirm tar

ADD https://aur.archlinux.org/packages/jr/jre7/jre7.tar.gz /opt/jre7.tar.gz

WORKDIR /opt/
RUN tar xf /opt/jre7.tar.gz

WORKDIR /opt/jre7/
RUN makepkg -si --asroot --noconfirm --needed
