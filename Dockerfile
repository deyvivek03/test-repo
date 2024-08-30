# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /test

# Copy the current directory contents into the container at /app
COPY . /test

# Install the necessary packages
RUN pip install --no-cache-dir flask gunicorn

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Define environment variable
ENV FLASK_APP=test.py

# Run the application
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "test:app"]
