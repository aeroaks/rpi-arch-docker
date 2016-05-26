# Arch Linux baseline docker container for Raspberry Pi
FROM scratch
MAINTAINER Akshay Verma <akshay.tvastr@yahoo.com>

# copy in super minimal root filesystem archive
ADD alarm/alarm.tar.gz /

# Update minimal image
RUN pacman --noconfirm -Syu

# If you use the first syntax without the array, docker pre-pends /bin/sh -c to your command.
# ref: http://crosbymichael.com/dockerfile-best-practices.html
CMD ["/usr/bin/bash"]

# try out
# ENTRYPOINT ["/usr/bin/bash"]
# CMD ["uname -a"]
