# Use an official Kali base image.
FROM kalilinux/kali-linux-docker

# Set shell to bash.
SHELL [ "/bin/bash", "-c" ]

# Set the working directory to /root/scripts
WORKDIR /root/scripts/

# Copy the current directory contents into the container at /root/scripts
ADD *.sh ./

# Add execute bit.
RUN chmod +x *.sh

# Update, Upgrade, Clean-Up and install Metasploit Framework.
RUN ./init.sh

# Remove init script.
RUN rm ./init.sh

# Return to root directory.
WORKDIR /

# Start bash.
CMD [ "/bin/bash" ]
