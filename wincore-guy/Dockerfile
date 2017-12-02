# Use an official Windows Server Core as a base image
FROM microsoft/windowsservercore

# Set shell to PowerShell
SHELL [ "powershell", "-NoProfile", "-ExecutionPolicy RemoteSigned", "-Command" ]

# Set the working directory to C:/Temp
WORKDIR C:/Temp/

# Copy the current directory contents into the container at C:/Temp
ADD *.ps1 C:/Temp/

# Define environment variable
ENV NAME World

# Install any needed packages specified in requirements.txt
RUN ". ./hello-world.ps1"

# Make port 80 available to the world outside this container
#EXPOSE 80

# Run launch.ps1 when the container launches
ENTRYPOINT [ "powershell.exe", "-NoProfile", "-ExecutionPolicy RemoteSigned", "-Command \". ./launch.ps1\"", ";" ]
CMD [ "powershell.exe", "-NoProfile", "-ExecutionPolicy RemoteSigned" ]