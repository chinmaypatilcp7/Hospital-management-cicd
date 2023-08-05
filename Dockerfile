# Use the official Python image as a base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the application files to the container
COPY app/ /app/

# Install the project dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port on which the application will listen
EXPOSE 5000

# Command to run the application
CMD ["python", "app.py"]
