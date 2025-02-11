# Use a base image with build tools
FROM python:3.12

# Install system dependencies
#Set the working directory inside the container
WORKDIR /app

# Copy the project files into the container
COPY . .

# Create a virtual environment and install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose a port (if your application needs it)
EXPOSE 8000

# Set the default command to start the container
CMD ["/bin/sh"]

