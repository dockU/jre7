FROM arch0/service
MAINTAINER Jon Chen <bsd@voltaire.sh>

ADD https://aur.archlinux.org/packages/jr/jre7/jre7.tar.gz /opt/jre7
WORKDIR /opt/jre7
RUN makepkg -si --asroot --noconfirm --needed
