# Use the Python 3.9 slim image as the base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Install the required system packages for Tkinter (Debian/Ubuntu-based)
RUN apt-get update && apt-get install -y libx11-6 libxext-dev libxrender-dev libxinerama-dev libxi-dev libxrandr-dev libxcursor-dev libxtst-dev tk-dev && rm -rf /var/lib/apt/list/*

# Copy the application files to the container
COPY . .

# Set the command to run the application
CMD ["python", "main.py"]
