# Use any Python image as the base image
FROM python:latest

# Set the working directory to /app
WORKDIR /app

# Copy requirements.txt to the working directory
COPY src/requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents to the container at /app
COPY ./src/server/py .

# Expose port 6000
EXPOSE 6000

# Run the server.py script using CMD
CMD ["python", "server.py"]
