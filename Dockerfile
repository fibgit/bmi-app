# Use the Python 3.9 slim image as the base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Install the required system packages for Tkinter (Debian/Ubuntu-based)
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        libgl1 \
        libgtk-3-0 \
    && rm -rf /var/lib/apt/lists/*

# Copy the application files to the container
COPY main.py /app

# Set the command to run the application
CMD ["python", "main.py"]
